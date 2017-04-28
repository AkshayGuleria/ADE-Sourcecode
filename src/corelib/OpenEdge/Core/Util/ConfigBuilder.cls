/************************************************
Copyright (c)  2015 by Progress Software Corporation. All rights reserved.
*************************************************/
/*------------------------------------------------------------------------
    File        : ConfigBuilder
    Purpose     : helper class for configuration data used by builders 
    Syntax      : 
    Description : 
    Author(s)   : pjudge
    Created     : Thu Mar 19 14:55:32 EDT 2015
    Notes       : 
  ----------------------------------------------------------------------*/
block-level on error undo, throw.

using OpenEdge.Core.Assert.
using Progress.Json.ObjectModel.JsonArray.
using Progress.Lang.Object.

class OpenEdge.Core.Util.ConfigBuilder use-widget-pool abstract: 
    /* single static tt for perf */
    define static protected temp-table ConfigOption no-undo
        field ParentBuilder as integer
        field ConfigName as character
        field ValueType as character        /* object|string|numeric|logical */
        field ObjectValue as Progress.Lang.Object
        field StringValue as character
        field NumericValue as decimal
        field LogicalValue as logical
        field DateTimeValue as datetime-tz
        index idx1 as primary unique ParentBuilder ConfigName .

    destructor ConfigBuilder():
        ClearOptions().
    end destructor.
    
    /** Clears all options for this builder */
    method protected void ClearOptions():
        define buffer ConfigOption for ConfigOption.
        
        for each ConfigOption where
                 ConfigOption.ParentBuilder eq integer(this-object):
            delete ConfigOption.
        end.
    end method.
    
    /** Stores an numeric value as an option
        
        @param character The option name
        @param Object the value     
        @return logical True is the option was overwritten */
    method protected logical SetOption(input pcName as character,
                                       input pdValue as decimal):
        define buffer ConfigOption for ConfigOption.
         
        define variable lExists as logical no-undo.
        
        Assert:NotNullOrEmpty(pcName, 'Config name').
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName
             no-error.
        assign lExists = available ConfigOption.
        if not lExists then
        do:
            create ConfigOption.
            assign ConfigOption.ParentBuilder = integer(this-object)
                   ConfigOption.ConfigName = pcName
                   ConfigOption.ValueType = 'number':u.
        end.
        
        Assert:Equals(ConfigOption.ValueType, 'number':u).
        assign ConfigOption.NumericValue = pdValue.
        
        return lExists.
    end method.
    
    /** Returns an option's object value
    
        @param character The option name
        @return Object the value    */
    method protected Object GetOptionObjectValue(input pcName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'object':u).
            return ConfigOption.ObjectValue. 
        end.
        
        return ?.
    end method.
    
    /** Returns an option's decimal value
    
        @param character The option name
        @return decimal the value    */
    method protected decimal GetOptionNumericValue(input pcName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'number':u).
            return ConfigOption.NumericValue.
        end.
        
        return ?.
    end method.
    
    /** Returns an option's character array value 
    
        @param character The option name
        @return character[] the value    */
    method protected character extent GetOptionStringArrayValue(input pcName as character):
        define variable cValue as character extent no-undo.
        define variable oArray as JsonArray no-undo.
        define variable iLoop as integer no-undo.
        define variable iMax as integer no-undo.
        
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').

        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'object':u).
            Assert:IsType(ConfigOption.ObjectValue, get-class(JsonArray)).
            
            assign oArray = cast(ConfigOption.ObjectValue, JsonArray).
            if valid-object(oArray) then
                assign iMax = oArray:Length
                       extent(cValue) = iMax.
            do iLoop = 1 to iMax:
                assign cValue[iLoop] = oArray:GetCharacter(iloop).
            end.
        end.
        
        return cValue.
    end method.

    /** Returns an option's character value
    
        @param character The option name
        @return character the value    */
    method protected character GetOptionStringValue(input pcName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').

        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'string':u).
            return ConfigOption.StringValue.
        end.
        
        return ?.
    end method.

    /** Returns an option's longchar value
    
        @param character The option name
        @return longchar the value    */
    method protected longchar GetOptionLongcharValue(input pcName as character):

        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').

        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'string':u).
            return ConfigOption.StringValue.
        end.
        
        return ?.
    end method.
    
    /** Returns an option's logical value
    
        @param character The option name
        @return logical the value    */
    method protected logical GetOptionLogicalValue(input pcName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'logical':u).
            return ConfigOption.LogicalValue.
        end.
        
        return ?.
    end method.
        
    /** Returns an option's datetime value
    
        @param character The option name
        @return datetime-tz the value    */
    method protected datetime-tz GetOptionDateTimeValue(input pcName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        if available ConfigOption then
        do:
            Assert:Equals(ConfigOption.ValueType, 'datetime':u).
            return ConfigOption.DateTimeValue.
        end.
        
        return ?.
    end method.
            
    /** Checks whether a config option already exists 
        
        @param  character The option name
        @return logical True if the named configuration option exists */
    method protected logical HasOption(input pcConfigName as character):
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcConfigName, 'Config name').

        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcConfigName 
             no-error.
        return available ConfigOption.
    end method.
    
    /** Removes an option
        
        @param character The option name */
    method protected logical RemoveOption(input pcName as character):
        define variable lExists as logical no-undo.
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName eq pcName
             no-error.
        assign lExists = available ConfigOption.
        if lExists then
            delete ConfigOption.
                    
        return lExists.
    end method.

    /** Stores an object value as an option
        
        @param character The option name
        @param Object the value 
        @return logical True is the option was overwritten    */
    method protected logical SetOption(input pcName as character,
                                    input poValue as Object):
        define variable lExists as logical no-undo.
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').

        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        assign lExists = available ConfigOption.
        if not lExists then
        do:
            create ConfigOption.
            assign ConfigOption.ParentBuilder = integer(this-object)
                   ConfigOption.ConfigName = pcName
                   ConfigOption.ValueType = 'object':u.
        end.
        
        Assert:Equals(ConfigOption.ValueType, 'object':u).
        assign ConfigOption.ObjectValue = poValue.                                                        
    
        return lExists.
    end method.

    /** Stores a logical value as an option
        
        @param character The option name
        @param logical the value     
        @return logical True is the option was overwritten */
    method protected logical SetOption(input pcName as character,
                                       input plValue as logical):
        define variable lExists as logical no-undo.
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        assign lExists = available ConfigOption.
        if not lExists then
        do:
            create ConfigOption.
            assign ConfigOption.ParentBuilder = integer(this-object)
                   ConfigOption.ConfigName = pcName
                   ConfigOption.ValueType = 'logical':u.
        end.
        
        Assert:Equals(ConfigOption.ValueType, 'logical':u).
        assign ConfigOption.LogicalValue = plValue. 

        return lExists.                                                      
    end method.

    /** Stores a datetime-tzvalue as an option
        
        @param character The option name
        @param datetime-tz the value    
        @return logical True is the option was overwritten */
    method protected logical SetOption(input pcName as character,
                                       input ptValue as datetime-tz):
        define variable lExists as logical no-undo.
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        assign lExists = available ConfigOption.
        if not lExists then
        do:
            create ConfigOption.
            assign ConfigOption.ParentBuilder = integer(this-object)
                   ConfigOption.ConfigName = pcName
                   ConfigOption.ValueType = 'datetime':u.
        end.
        
        Assert:Equals(ConfigOption.ValueType, 'datetime':u).
        assign ConfigOption.DateTimeValue = ptValue.
        
        return lExists.
    end method.
    
    /** Stores an value as an option
        
        @param character The option name
        @param character the value     
        @return logical True is the option was overwritten */
    method protected logical SetOption(input pcName as character,
                                       input pcValue as character):
        define variable lExists as logical no-undo.
        define buffer ConfigOption for ConfigOption.
         
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        find ConfigOption where
             ConfigOption.ParentBuilder eq integer(this-object) and
             ConfigOption.ConfigName    eq pcName 
             no-error.
        assign lExists = available ConfigOption.
        if not lExists then
        do:
            create ConfigOption.
            assign ConfigOption.ParentBuilder = integer(this-object)
                   ConfigOption.ConfigName = pcName
                   ConfigOption.ValueType = 'string':u.
        end.
        
        Assert:Equals(ConfigOption.ValueType, 'string':u).
        assign ConfigOption.StringValue = pcValue.
        
        return lExists.
    end method.

    /** Appends a character value to an array (convenience)
        
        @param character The option name
        @param character the value          */
    method protected logical AppendArrayCharacterValue(input pcName as character,
                                                       input pcValue as character):
        define variable oValue as JsonArray no-undo.
        define variable lExists as logical no-undo.
        
        Assert:NotNullOrEmpty(pcName, 'Config name').
        
        assign lExists = HasOption(pcName).
        
        if lExists then
            assign oValue = cast(GetOptionObjectValue(pcName), JsonArray).
        else
            assign oValue = new JsonArray().
        
        oValue:Add(pcValue).
        
        SetOption(pcName, oValue).
        
        return lExists.    
    end method.
        
end class.