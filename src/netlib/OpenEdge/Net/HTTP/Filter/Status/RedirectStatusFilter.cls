/************************************************
Copyright (c) 2014-2016 by Progress Software Corporation. All rights reserved.
*************************************************/ 
/*------------------------------------------------------------------------
    File        : RedirectStatusFilter
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : pjudge
    Created     : Mon Feb 17 13:06:38 EST 2014
    Notes       : - The Message for this writer is the REQUEST since it 
                    will retrieve data from the request (Location header) and
                    write a new URI to the request.
  ----------------------------------------------------------------------*/
block-level on error undo, throw.

using OpenEdge.Core.Assert.
using OpenEdge.Logging.ILogWriter.
using OpenEdge.Logging.ISupportLogging.
using OpenEdge.Logging.LogLevelEnum.
using OpenEdge.Logging.LoggerBuilder.
using OpenEdge.Net.HTTP.Cookie.
using OpenEdge.Net.HTTP.Filter.Status.RedirectStatusFilter.
using OpenEdge.Net.HTTP.IHttpMessage.
using OpenEdge.Net.HTTP.IHttpMessageWriter.
using OpenEdge.Net.HTTP.IHttpRequest.
using OpenEdge.Net.HTTP.IHttpResponse.
using OpenEdge.Net.URI.
using OpenEdge.Net.UriSchemeEnum.
using Progress.Lang.Object.

class OpenEdge.Net.HTTP.Filter.Status.RedirectStatusFilter implements IHttpMessageWriter, ISupportLogging:
     
    define public property Logger as ILogWriter no-undo get. set.
     
    /** (mandatory) The message that's being written to. The values passed in to the Write() methods
        will be parsed/processed and writted to this message. */  
    define public property Message as IHttpMessage no-undo get. private set. 
    
    define private variable mcData as character no-undo.
    define private variable moCookies as Cookie extent no-undo.
    
    constructor public RedirectStatusFilter(input poMessage as IHttpRequest):
        Assert:NotNull(poMessage, 'Http request').
        
        assign this-object:Message = poMessage
               this-object:Logger  = LoggerBuilder:GetLogger(get-class(RedirectStatusFilter))
               .
    end constructor.

    method public void Close():
        Flush().
        
        assign mcData            = '':u
               extent(moCookies) = ?.
    end method.
    
    method public void Flush():
        define variable oScheme as UriSchemeEnum no-undo.
        define variable iLoop as integer no-undo.
        
        Assert:NotNullOrEmpty(mcData, 'Location').
        
        /* Despite the HTTP spec, the Location may contain a relative URI */
        assign oScheme = UriSchemeEnum:GetEnum(right-trim(entry(1, mcData, '/':u), ':':u)) no-error.
        if not valid-object(oScheme) then
            assign mcData = cast(this-object:Message, IHttpRequest):URI:BaseUri + mcData.

        Logger:Debug(substitute('From URL &1':u, cast(this-object:Message, IHttpRequest):URI:ToString())).
        
        cast(this-object:Message, IHttpRequest):URI = URI:Parse(string(mcData)).
        
        Logger:Debug(substitute('To URL &1':u, cast(this-object:Message, IHttpRequest):URI:ToString())).
        
        /* Add the response cookies to the new request */
        do iLoop = extent(moCookies) to 1 by -1:
            cast(this-object:Message, IHttpRequest):SetCookie(moCookies[iLoop]).
        end.
    end method.

    method public void Open():
        assign mcData            = '':u
               extent(moCookies) = ?.
    end method.
    
    /** Write data to/from the message

        @param handle Data to write */
    method public void Write(input phData as handle):    
        /* no-op */
    end method.

    /** Write data to/from the message

        @param character Data to write */
    method public void Write(input-output pcData as character):   
        Assert:NotNullOrEmpty(pcData, 'Location').
        
        assign mcData = pcData.
    end method.    

    method public void Write(input-output pcData as longchar):
        Assert:NotNullOrEmpty(pcData, 'Location').
        
        assign mcData = string(pcData).
    end method.

    method public void Write(input pmData as memptr):
        Assert:IsPositive(get-size(pmData), 'Data size').        
        assign mcData = get-string(pmData, 1).
    end method.

    method public void Write(input poData as Object):
        Assert:IsType(poData, get-class(IHttpResponse)).
        
        /* the value of the Location header is the new host/path */
        if cast(poData, IHttpResponse):HasHeader('Location':u) then
            assign mcData = cast(poData, IHttpResponse):GetHeader('Location':u):Value.
            
        Logger:Debug(substitute('HTTP status &1':u, cast(poData, IHttpResponse):StatusCode)).
        
        /* we also need to 'carry over' Cookies */
        cast(poData, IHttpResponse):GetCookies(output moCookies).
    end method.
    
end class.