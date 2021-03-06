/*********************************************************************
* Copyright (C) 2000 by Progress Software Corporation. All rights    *
* reserved. Prior versions of this work may contain portions         *
* contributed by participants of Possenet.                           *
*               PSC                                                  *
*                                                                    *
*********************************************************************/

TRIGGER PROCEDURE FOR WRITE OF gsm_required_manager OLD BUFFER o_gsm_required_manager.

/* Created automatically using ERwin ICF Trigger template db/af/erw/afercustrg.i
   Do not change manually. Customisations to triggers should be placed in separate
   include files pulled into the trigger. ICF auto generates write trigger custom
   include files. Delete or create customisation include files need to be created
   manually. Be sure to put the hook in ERwin directly so as not to have you changes
   overwritten.
   User defined Macro (UDP) Summary (case sensitive)
   gsm_required_manager           Expands to full table name, e.g. gsm_user
   %TableFLA            Expands to table unique code, e.g. gsmus
   %TableObj            If blank or not defined expands to table_obj with no prefix (framework standard)
                        If defined, uses this field as the object field
                        If set to "none" then indicates table does not have an object field
   XYZ                  Do not define so we can compare against an empty string

   See docs for explanation of replication macros 
*/   

&SCOPED-DEFINE TRIGGER_TABLE gsm_required_manager
&SCOPED-DEFINE TRIGGER_FLA gsmrm
&SCOPED-DEFINE TRIGGER_OBJ required_manager_obj


DEFINE BUFFER lb_table FOR gsm_required_manager.      /* Used for recursive relationships */
DEFINE BUFFER lb1_table FOR gsm_required_manager.     /* Used for lock upgrades */



/* Standard top of WRITE trigger code */
{af/sup/aftrigtopw.i}

/* properform fields if enabled for table */
IF CAN-FIND(FIRST gsc_entity_mnemonic
            WHERE gsc_entity_mnemonic.entity_mnemonic = 'gsmrm':U
              AND gsc_entity_mnemonic.auto_properform_strings = YES) THEN
  RUN af/app/afpropfrmp.p (INPUT BUFFER gsm_required_manager:HANDLE).
  



/* Generated by ICF ERwin Template */
/* gsm_session_type is responsible for starting gsm_required_manager ON CHILD UPDATE RESTRICT */
IF NEW gsm_required_manager OR  gsm_required_manager.session_type_obj <> o_gsm_required_manager.session_type_obj  THEN
  DO:
    IF NOT(CAN-FIND(FIRST gsm_session_type WHERE
        gsm_required_manager.session_type_obj = gsm_session_type.session_type_obj)) THEN
              DO:
                /* Cannot update child because parent does not exist ! */
                ASSIGN lv-error = YES lv-errgrp = "AF ":U lv-errnum = 103 lv-include = "gsm_required_manager|gsm_session_type":U.
                RUN error-message (lv-errgrp, lv-errnum, lv-include).
              END.
    
    
  END.

/* Generated by ICF ERwin Template */
/* gsc_manager_type describes gsm_required_manager ON CHILD UPDATE RESTRICT */
IF NEW gsm_required_manager OR  gsm_required_manager.manager_type_obj <> o_gsm_required_manager.manager_type_obj  THEN
  DO:
    IF NOT(CAN-FIND(FIRST gsc_manager_type WHERE
        gsm_required_manager.manager_type_obj = gsc_manager_type.manager_type_obj)) THEN
              DO:
                /* Cannot update child because parent does not exist ! */
                ASSIGN lv-error = YES lv-errgrp = "AF ":U lv-errnum = 103 lv-include = "gsm_required_manager|gsc_manager_type":U.
                RUN error-message (lv-errgrp, lv-errnum, lv-include).
              END.
    
    
  END.








IF NOT NEW gsm_required_manager AND gsm_required_manager.{&TRIGGER_OBJ} <> o_gsm_required_manager.{&TRIGGER_OBJ} THEN
    DO:
        ASSIGN lv-error = YES lv-errgrp = "AF":U lv-errnum = 13 lv-include = "table object number":U.
        RUN error-message (lv-errgrp,lv-errnum,lv-include).
    END.

/* Customisations to WRITE trigger */
{icf/trg/gsmrmtrigw.i}



/* Update Audit Log */
IF CAN-FIND(FIRST gsc_entity_mnemonic
            WHERE gsc_entity_mnemonic.entity_mnemonic = 'gsmrm':U
              AND gsc_entity_mnemonic.auditing_enabled = YES) THEN
  RUN af/app/afauditlgp.p (INPUT "WRITE":U, INPUT "gsmrm":U, INPUT BUFFER gsm_required_manager:HANDLE, INPUT BUFFER o_gsm_required_manager:HANDLE).

/* Standard bottom of WRITE trigger code */
{af/sup/aftrigendw.i}



