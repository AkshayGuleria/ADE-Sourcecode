/*************************************************************/
 /* Copyright (c) 2011 by progress Software Corporation.      */
 /*                                                           */
 /* all rights reserved.  no part of this program or document */
 /* may be  reproduced in  any form  or by  any means without */
 /* permission in writing from progress Software Corporation. */
 /*************************************************************/
/*------------------------------------------------------------------------
    File        : IDataSource
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : hdaniels
    Created     : Thu Sep 03 20:25:34 EDT 2009
    Notes       : 
  ----------------------------------------------------------------------*/

using OpenEdge.DataAdmin.DataAccess.IDataAccess from propath.
using OpenEdge.DataAdmin.Message.ITableRequest from propath.
using Progress.Lang.* from propath.
using OpenEdge.DataAdmin.Lang.IQueryMap from propath.

interface OpenEdge.DataAdmin.DataSource.IDataSource inherits IQueryMap:  
    define public property Url            as character no-undo get. set.
    define public property BatchSize      as integer   no-undo get. set.
    define public property NumRecords     as integer   no-undo get. set.
    define public property Table          as char      no-undo get. set.
    /** the complete map from logical to physical 
        Comma separated target,source map. 
        Cannot always be used for attach at runtime, since the map  
        can have different data types.  */     
     
    /*
    define public property NumRecords   as integer   no-undo get.
      */
    define public property  Tables          as char      no-undo get.  
    define public property  PhysicalTables  as char      no-undo get.   
       
    /* set from DataAccess save use  to getsource for children 
       @todo - improve - pass to save or constructor  */ 
    define public property DataAccess as IDataAccess no-undo get. set. 
 
    define public property FillMode     as character no-undo get. set.
    define public property FillError    as Error no-undo get. set.
    
    /* optional list of datasource table names that is managed by the source 
       and not to be saved from the IDataAccess container  */
    define public property SaveChildNames   as character no-undo get.  
    
    /**  save all changes */
    method public logical Save(bufferHandle as handle).
    
    /**  save changes of the specified state 
         @param state use compiler constants row-created, row-modified or row-deleted */
    
    method public logical Save(bufferHandle as handle,piState as integer).
    
    method public logical Save(phparentbuffer as handle,bufferHandle as handle,piState as integer).
 
    /** refresh row-state 0 data */
    method public logical Refresh(bufferHandle as handle).
    
    /** this method refresh the CDC create input buffer  */
    method public logical Refreshbuffers(bufferHandle as handle).
    
    method public logical Attach(bufferHandle as handle).
    
    method public logical Fill().
   
    method public logical Prepare(bufferHandle as handle).
    method public logical Prepare(bufferHandle as handle, queryString as char, parentJoin as char).
    method public logical Prepare(phBuffer as handle,req as ITableRequest).
          
/*    method public logical AddFieldMap(input-output table-handle bufferHandle).*/
   
   
end interface.
