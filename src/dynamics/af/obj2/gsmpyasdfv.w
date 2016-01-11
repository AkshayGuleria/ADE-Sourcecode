&ANALYZE-SUSPEND _VERSION-NUMBER AB_v10r12 GUI ADM2
&ANALYZE-RESUME
&Scoped-define WINDOW-NAME CURRENT-WINDOW
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _XFTR "Update-Object-Version" sObject _INLINE
/* Actions: ? ? ? ? af/sup/afverxftrp.p */
/* This has to go above the definitions sections, as that is what it modifies.
   If its not, then the definitions section will have been saved before the
   XFTR code kicks in and changes it */
/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _XFTR "Definition Comments Wizard" sObject _INLINE
/* Actions: ? af/cod/aftemwizcw.w ? ? ? */
/* Program Definition Comment Block Wizard
Welcome to the Program Definition Comment Block Wizard. Press Next to proceed.
af/cod/aftemwizpw.w
*/
/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CUSTOM _DEFINITIONS sObject 
/*********************************************************************
* Copyright (C) 2000 by Progress Software Corporation ("PSC"),       *
* 14 Oak Park, Bedford, MA 01730, and other contributors as listed   *
* below.  All Rights Reserved.                                       *
*                                                                    *
* The Initial Developer of the Original Code is PSC.  The Original   *
* Code is Progress IDE code released to open source December 1, 2000.*
*                                                                    *
* The contents of this file are subject to the Possenet Public       *
* License Version 1.0 (the "License"); you may not use this file     *
* except in compliance with the License.  A copy of the License is   *
* available as of the date of this notice at                         *
* http://www.possenet.org/license.html                               *
*                                                                    *
* Software distributed under the License is distributed on an "AS IS"*
* basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. You*
* should refer to the License for the specific language governing    *
* rights and limitations under the License.                          *
*                                                                    *
* Contributors:                                                      *
*                                                                    *
*********************************************************************/
/*---------------------------------------------------------------------------------
  File: gsmpyasdfv.w

  Description:  AppServer Connection Parameters SDF

  Purpose:      Accepts the connection parameters to an AppServer

  Parameters:   <none>

  History:
  --------
  (v:010000)    Task:    90000027   UserRef:    
                Date:   10/05/2001  Author:     Bruce Gruenbaum

  Update Notes: Created from Template rysttdatfv.w

  (v:010001)    Task:    90000027   UserRef:    
                Date:   11/05/2001  Author:     Bruce Gruenbaum

  Update Notes: Corrected comments

--------------------------------------------------------------------------------*/
/*                   This .W file was created with the Progress UIB.             */
/*-------------------------------------------------------------------------------*/

/* Create an unnamed pool to store all the widgets created 
     by this procedure. This is a good default which assures
     that this procedure's triggers and internal procedures 
     will execute in this procedure's storage, and that proper
     cleanup will occur on deletion of the procedure. */

CREATE WIDGET-POOL.

/* ***************************  Definitions  ************************** */

/* MIP-GET-OBJECT-VERSION pre-processors
   The following pre-processors are maintained automatically when the object is
   saved. They pull the object and version from Roundtable if possible so that it
   can be displayed in the about window of the container */

&scop object-name       gsmpyasdfv.w
DEFINE VARIABLE lv_this_object_name AS CHARACTER INITIAL "{&object-name}":U NO-UNDO.
&scop object-version    000000

/* Parameters Definitions ---                                           */

/* Local Variable Definitions ---                                       */

DEFINE VARIABLE ghContainerSource    AS HANDLE       NO-UNDO.

/* Astra 2 object identifying preprocessor */
&glob   astra2-staticSmartDataField yes

{af/sup2/afglobals.i}

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&ANALYZE-SUSPEND _UIB-PREPROCESSOR-BLOCK 

/* ********************  Preprocessor Definitions  ******************** */

&Scoped-define PROCEDURE-TYPE SmartDataField
&Scoped-define DB-AWARE no

/* Name of first Frame and/or Browse and/or first Query                 */
&Scoped-define FRAME-NAME frMain

/* Standard List Definitions                                            */
&Scoped-Define ENABLED-OBJECTS raOption fiHost fiNameService fiAppService ~
toSSL toSessionReuse fiURL toHostVerify EdEditor 
&Scoped-Define DISPLAYED-OBJECTS raOption fiHost fiNameService fiAppService ~
toSSL toSessionReuse fiURL toHostVerify EdEditor 

/* Custom List Definitions                                              */
/* List-1,List-2,List-3,List-4,List-5,List-6                            */

/* _UIB-PREPROCESSOR-BLOCK-END */
&ANALYZE-RESUME


/* ************************  Function Prototypes ********************** */

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _FUNCTION-FORWARD getDataValue sObject 
FUNCTION getDataValue RETURNS CHARACTER
  (  )  FORWARD.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _FUNCTION-FORWARD setDataValue sObject 
FUNCTION setDataValue RETURNS LOGICAL
  ( pcValue AS CHARACTER )  FORWARD.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


/* ***********************  Control Definitions  ********************** */


/* Definitions of the field level widgets                               */
DEFINE VARIABLE EdEditor AS CHARACTER 
     VIEW-AS EDITOR SCROLLBAR-VERTICAL
     SIZE 104.4 BY 6.38 NO-UNDO.

DEFINE VARIABLE fiAppService AS CHARACTER FORMAT "X(256)":U 
     LABEL "AppService (-AppService)" 
     VIEW-AS FILL-IN 
     SIZE 73.6 BY 1 NO-UNDO.

DEFINE VARIABLE fiHost AS CHARACTER FORMAT "X(256)":U 
     LABEL "Host (-H)" 
     VIEW-AS FILL-IN 
     SIZE 73.6 BY 1 NO-UNDO.

DEFINE VARIABLE fiNameService AS CHARACTER FORMAT "X(256)":U 
     LABEL "Name service (-S)" 
     VIEW-AS FILL-IN 
     SIZE 73.6 BY 1 NO-UNDO.

DEFINE VARIABLE fiURL AS CHARACTER FORMAT "X(256)":U 
     LABEL "AppServer URL (-URL)" 
     VIEW-AS FILL-IN 
     SIZE 73.6 BY 1 NO-UNDO.

DEFINE VARIABLE raOption AS CHARACTER 
     VIEW-AS RADIO-SET HORIZONTAL
     RADIO-BUTTONS 
          "Local", "L",
"Regular connection", "R",
"URL connection", "U",
"Decide at run-time", "D"
     SIZE 81.2 BY .76 NO-UNDO.

DEFINE VARIABLE toHostVerify AS LOGICAL INITIAL no 
     LABEL "Host verification disabled (-nohostverify)" 
     VIEW-AS TOGGLE-BOX
     SIZE 46.4 BY .81 NO-UNDO.

DEFINE VARIABLE toSessionReuse AS LOGICAL INITIAL no 
     LABEL "Session reuse disabled (-nosessionreuse)" 
     VIEW-AS TOGGLE-BOX
     SIZE 46.4 BY .81 NO-UNDO.

DEFINE VARIABLE toSSL AS LOGICAL INITIAL no 
     LABEL "SSL enabled (-ssl)" 
     VIEW-AS TOGGLE-BOX
     SIZE 46.4 BY .81 NO-UNDO.


/* ************************  Frame Definitions  *********************** */

DEFINE FRAME frMain
     raOption AT ROW 1.29 COL 14.6 NO-LABEL
     fiHost AT ROW 2.62 COL 25.8 COLON-ALIGNED
     fiNameService AT ROW 3.67 COL 25.8 COLON-ALIGNED
     fiAppService AT ROW 4.71 COL 25.8 COLON-ALIGNED
     toSSL AT ROW 5.81 COL 28.2
     toSessionReuse AT ROW 6.67 COL 28.2
     fiURL AT ROW 7.52 COL 25.8 COLON-ALIGNED
     toHostVerify AT ROW 8.67 COL 28.2
     EdEditor AT ROW 9.62 COL 1.4 NO-LABEL
    WITH 1 DOWN NO-BOX KEEP-TAB-ORDER OVERLAY 
         SIDE-LABELS NO-UNDERLINE THREE-D 
         AT COL 1 ROW 1 SCROLLABLE .


/* *********************** Procedure Settings ************************ */

&ANALYZE-SUSPEND _PROCEDURE-SETTINGS
/* Settings for THIS-PROCEDURE
   Type: SmartDataField
   Allow: Basic
   Frames: 1
   Add Fields to: Neither
   Other Settings: PERSISTENT-ONLY COMPILE
 */

/* This procedure should always be RUN PERSISTENT.  Report the error,  */
/* then cleanup and return.                                            */
IF NOT THIS-PROCEDURE:PERSISTENT THEN DO:
  MESSAGE "{&FILE-NAME} should only be RUN PERSISTENT.":U
          VIEW-AS ALERT-BOX ERROR BUTTONS OK.
  RETURN.
END.

&ANALYZE-RESUME _END-PROCEDURE-SETTINGS

/* *************************  Create Window  ************************** */

&ANALYZE-SUSPEND _CREATE-WINDOW
/* DESIGN Window definition (used by the UIB) 
  CREATE WINDOW sObject ASSIGN
         HEIGHT             = 17.57
         WIDTH              = 106.4.
/* END WINDOW DEFINITION */
                                                                        */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CUSTOM _INCLUDED-LIB sObject 
/* ************************* Included-Libraries *********************** */

{src/adm2/field.i}

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME




/* ***********  Runtime Attributes and AppBuilder Settings  *********** */

&ANALYZE-SUSPEND _RUN-TIME-ATTRIBUTES
/* SETTINGS FOR WINDOW sObject
  VISIBLE,,RUN-PERSISTENT                                               */
/* SETTINGS FOR FRAME frMain
   NOT-VISIBLE Size-to-Fit                                              */
ASSIGN 
       FRAME frMain:SCROLLABLE       = FALSE
       FRAME frMain:HIDDEN           = TRUE.

ASSIGN 
       EdEditor:RETURN-INSERTED IN FRAME frMain  = TRUE
       EdEditor:READ-ONLY IN FRAME frMain        = TRUE.

/* _RUN-TIME-ATTRIBUTES-END */
&ANALYZE-RESUME


/* Setting information for Queries and Browse Widgets fields            */

&ANALYZE-SUSPEND _QUERY-BLOCK FRAME frMain
/* Query rebuild information for FRAME frMain
     _Options          = "NO-LOCK"
     _Query            is NOT OPENED
*/  /* FRAME frMain */
&ANALYZE-RESUME

 



/* ************************  Control Triggers  ************************ */

&Scoped-define SELF-NAME fiHost
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL fiHost sObject
ON VALUE-CHANGED OF fiHost IN FRAME frMain /* Host (-H) */
,fiNameService,fiAppService,toSSL,toSessionReuse,fiURL,toHostVerify
DO:
  {set DataModified TRUE}.
  
  RUN toSSLChanged. /* Enable/disable SSL toggles based on toSSL */
  /* createString is run to create the connection string and display it in the 
     editor */
  RUN createString.  
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&Scoped-define SELF-NAME raOption
&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CONTROL raOption sObject
ON VALUE-CHANGED OF raOption IN FRAME frMain
DO:
  {set DataModified TRUE}.

  /* radioChanged is run to enable/disable fields appropriately based on 
     the option chosen */
  RUN radioChanged (SELF:SCREEN-VALUE).
END.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


&UNDEFINE SELF-NAME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _CUSTOM _MAIN-BLOCK sObject 


/* ***************************  Main Block  *************************** */

/* If testing in the UIB, initialize the SmartObject. */  
&IF DEFINED(UIB_IS_RUNNING) <> 0 &THEN          
  RUN initializeObject.
&ENDIF

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME


/* **********************  Internal Procedures  *********************** */

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE createString sObject 
PROCEDURE createString :
/*------------------------------------------------------------------------------
  Purpose:     This procedure creates the connection string and displays it in 
               the read-only editor
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
DEFINE VARIABLE cString AS CHARACTER    NO-UNDO.

  DO WITH FRAME {&FRAME-NAME}:

    CASE raOption:SCREEN-VALUE:
      WHEN 'R':U THEN
      DO:
        ASSIGN
          EdEditor:SCREEN-VALUE = '-H ':U + fiHost:SCREEN-VALUE + 
                                  ' -S ':U + fiNameService:SCREEN-VALUE +
                                  ' -AppService ' + fiAppService:SCREEN-VALUE.
        IF toSSL:CHECKED THEN
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -ssl':U.
        IF toSessionReuse:CHECKED THEN 
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -nosessionreuse':U.
        IF toHostVerify:CHECKED THEN
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -nohostverify':U.
      END.
      WHEN 'U':U THEN
      DO:
        ASSIGN
          EdEditor:SCREEN-VALUE = '-URL ':U + fiURL:SCREEN-VALUE.
        IF toHostVerify:CHECKED THEN
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -nohostverify':U.
      END.  /* when U */
      WHEN 'D':U THEN
      DO:
        ASSIGN 
          EdEditor:SCREEN-VALUE = '-H ':U + fiHost:SCREEN-VALUE + 
                                  ' -S ':U + fiNameService:SCREEN-VALUE +
                                  ' -AppService ' + fiAppService:SCREEN-VALUE +  
                                  ' -URL ':U + fiURL:SCREEN-VALUE.
        IF toSSL:CHECKED THEN
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -ssl':U.
        IF toSessionReuse:CHECKED THEN 
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -nosessionreuse':U.
        IF toHostVerify:CHECKED THEN 
          ASSIGN 
            EdEditor:SCREEN-VALUE = EdEditor:SCREEN-VALUE + ' -nohostverify':U.
      END.  /* when D */
      OTHERWISE ASSIGN edEditor:SCREEN-VALUE = '':U.
    END CASE.

  END.  /* do with frame */

END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE disableField sObject 
PROCEDURE disableField :
/*------------------------------------------------------------------------------
  Purpose:   Disable the field   
  Parameters:  <none>
  Notes:    SmartDataField:disableFields will call this for all Objects of type
            PROCEDURE that it encounters in the EnableFields Property.  
            The developer must add logic to disable the actual SmartField.    
------------------------------------------------------------------------------*/

  DO WITH FRAME {&FRAME-NAME}:

    ASSIGN
      raOption:SENSITIVE      = FALSE
      fiHost:SENSITIVE        = FALSE
      fiNameService:SENSITIVE = FALSE
      fiAppService:SENSITIVE  = FALSE
      toSSL:SENSITIVE         = FALSE
      toSessionReuse:SENSITIVE = FALSE
      fiURL:SENSITIVE         = FALSE
      toHostVerify:SENSITIVE  = FALSE
      .

  END.

  {set FieldEnabled FALSE}.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE disable_UI sObject  _DEFAULT-DISABLE
PROCEDURE disable_UI :
/*------------------------------------------------------------------------------
  Purpose:     DISABLE the User Interface
  Parameters:  <none>
  Notes:       Here we clean-up the user-interface by deleting
               dynamic widgets we have created and/or hide 
               frames.  This procedure is usually called when
               we are ready to "clean-up" after running.
------------------------------------------------------------------------------*/
  /* Hide all frames. */
  HIDE FRAME frMain.
  IF THIS-PROCEDURE:PERSISTENT THEN DELETE PROCEDURE THIS-PROCEDURE.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE enableField sObject 
PROCEDURE enableField :
/*------------------------------------------------------------------------------
  Purpose:   Enable the field   
  Parameters:  <none>
  Notes:    SmartDataField:enableFields will call this for all Objects of type
            PROCEDURE that it encounters in the EnableFields Property.  
            The developer must add logic to enable the SmartField.    
------------------------------------------------------------------------------*/
  DO WITH FRAME {&FRAME-NAME}:

    ASSIGN
      raOption:SENSITIVE      = TRUE
      fiHost:SENSITIVE        = TRUE
      fiNameService:SENSITIVE = TRUE
      fiAppService:SENSITIVE  = TRUE
      toSSL:SENSITIVE         = TRUE
      fiURL:SENSITIVE         = TRUE
      toHostVerify:SENSITIVE  = TRUE
      .

    /* radioChanged is run to enabled/disable fields appropriately */
    RUN radioChanged (INPUT raOption:SCREEN-VALUE).
  END.

  {set FieldEnabled TRUE}.

END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE enableObject sObject 
PROCEDURE enableObject :
/*------------------------------------------------------------------------------
  Purpose:     Super Override
  Parameters:  
  Notes:       
------------------------------------------------------------------------------*/
DEFINE VARIABLE cNewRecord  AS CHARACTER    NO-UNDO.

  RUN SUPER.

  /* radioChanged is run to enabled/disable fields appropriately */
  RUN radioChanged (INPUT raOption:SCREEN-VALUE IN FRAME {&FRAME-NAME}).
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE initializeObject sObject 
PROCEDURE initializeObject :
/*------------------------------------------------------------------------------
  Purpose:     Super Override
  Parameters:  
  Notes:       
------------------------------------------------------------------------------*/

  ghContainerSource = DYNAMIC-FUNCTION('getContainerSource':U).

  /* subscribe to validateField in the viewer */
  SUBSCRIBE TO 'validateField':U IN ghContainerSource.

  RUN SUPER.

END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE parseValue sObject 
PROCEDURE parseValue :
/*------------------------------------------------------------------------------
  Purpose:     This procedure parses the connection string to display the 
               connection data in appropriate fields.
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
DEFINE INPUT PARAMETER pcValue AS CHARACTER NO-UNDO.

DEFINE VARIABLE cList       AS CHARACTER  INIT '-H,-S,-A,-U'  NO-UNDO.
DEFINE VARIABLE cString     AS CHARACTER    NO-UNDO.
DEFINE VARIABLE iPosition   AS INTEGER      NO-UNDO.
DEFINE VARIABLE iNext       AS INTEGER      NO-UNDO.
DEFINE VARIABLE iNum        AS INTEGER      NO-UNDO.
DEFINE VARIABLE iSpace      AS INTEGER      NO-UNDO.

  ASSIGN
    pcValue = ' ':U + pcValue.

  DO WITH FRAME {&FRAME-NAME}:
    DO iNum = 1 TO NUM-ENTRIES(cList):
      iPosition = INDEX(pcValue, ENTRY(iNum, cList)).
      IF iPosition > 0 THEN
      DO:
        iSpace = INDEX(pcValue, ' ':U, iPosition + 1).
        iNext = INDEX(pcValue, ' -':U, iPosition + 1).
        IF iNext = 0 THEN iNext = -1.
        ELSE iNext = (iNext - 1) - iSpace.
        ASSIGN
          cString = SUBSTRING(pcValue, iSpace + 1, iNext).
        CASE ENTRY(iNum, cList):
          WHEN '-H':U THEN fiHost:SCREEN-VALUE = cString.
          WHEN '-S':U THEN fiNameService:SCREEN-VALUE = cString.
          WHEN '-A':U THEN fiAppService:SCREEN-VALUE = cString.
          WHEN '-U':U THEN fiURL:SCREEN-VALUE = cString.
        END CASE.
      END.  /* option found */
    END.  /* do while */

    iPosition = INDEX(pcValue, '-nohostverify':U).
    IF iPosition > 0 THEN toHostVerify:CHECKED = TRUE.

    iPosition = INDEX(pcValue, '-ssl':U).
    IF iPosition > 0 THEN toSSL:CHECKED = TRUE.

    iPosition = INDEX(pcValue, '-nosessionreuse':U).
    IF iPosition > 0 THEN toSessionReuse:CHECKED = TRUE.
  END.  /* do with frame */
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE radioChanged sObject 
PROCEDURE radioChanged :
/*------------------------------------------------------------------------------
  Purpose:     This procedure enables/disables field appropriately based on the
               option chosen.  It also sets the screen-value to blank as
               appropriate.
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
DEFINE INPUT PARAMETER cValue AS CHARACTER NO-UNDO.

DEFINE VARIABLE lRegular    AS LOGICAL      NO-UNDO.
DEFINE VARIABLE lURL        AS LOGICAL      NO-UNDO.

  CASE cValue:
    WHEN 'L':U THEN 
      ASSIGN 
        lRegular = FALSE
        lURL = FALSE.
    WHEN 'R':U THEN
      ASSIGN
        lRegular = TRUE
        lURL = FALSE.
    WHEN 'U':U THEN
      ASSIGN
        lRegular = FALSE
        lURL = TRUE.
    WHEN 'D':U THEN
      ASSIGN
        lRegular = TRUE
        lURL = TRUE.
  END CASE.

  DO WITH FRAME {&FRAME-NAME}:
    ASSIGN
      fiHost:SENSITIVE = lRegular
      fiNameService:SENSITIVE = lRegular
      fiAppService:SENSITIVE = lRegular
      fiURL:SENSITIVE = lURL
      toSSL:SENSITIVE = lRegular
      toSessionReuse:SENSITIVE = FALSE
      toHostVerify:SENSITIVE = lURL.

    IF LOOKUP(cValue, 'L,U':U) > 0 THEN
      ASSIGN
        fiHost:SCREEN-VALUE = '':U
        fiNameService:SCREEN-VALUE = '':U
        fiAppService:SCREEN-VALUE = '':U.

    IF LOOKUP(cValue, 'L,R':U) > 0 THEN
      ASSIGN 
        fiURL:SCREEN-VALUE = '':U.
  END.  /* do with frame */

  RUN toSSLChanged.
  RUN createString.

END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE toSSLChanged sObject 
PROCEDURE toSSLChanged :
/*------------------------------------------------------------------------------
  Purpose:     This procedure enables/disables SSL related toggle-boxes based on
               the raOption and toSSL fields when it is checked or unchecked.
               Toggles would otherwise be enabled/disabled at the radioChanged
               procedure.
  Parameters:  <none>
  Notes:       
------------------------------------------------------------------------------*/
  DO WITH FRAME {&FRAME-NAME}:
      CASE raOption:SCREEN-VALUE:
          WHEN "L":U THEN /* Local */
              ASSIGN
                 toSSL:CHECKED                  = FALSE
                 toSessionReuse:CHECKED         = FALSE
                 toHostVerify:CHECKED           = FALSE.

          WHEN "R":U THEN /* Regular connection */
              IF toSSL:CHECKED THEN
                 ASSIGN
                   toSessionReuse:SENSITIVE     = TRUE
                   toHostVerify:SENSITIVE       = TRUE.
              ELSE
                ASSIGN
                   toSessionReuse:CHECKED       = FALSE
                   toHostVerify:CHECKED         = FALSE
                   toSessionReuse:SENSITIVE     = FALSE
                   toHostVerify:SENSITIVE       = FALSE.

          WHEN "U":U THEN /* URL connection */
              ASSIGN
                 toSSL:CHECKED                  = FALSE
                 toSessionReuse:CHECKED         = FALSE.

          WHEN "D":U THEN /* Decide at runtime */
              IF toSSL:CHECKED THEN
                 ASSIGN
                   toSessionReuse:SENSITIVE     = TRUE.
              ELSE
                ASSIGN
                   toSessionReuse:CHECKED       = FALSE
                   toSessionReuse:SENSITIVE     = FALSE.

      END CASE.
  END.
END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _PROCEDURE validateField sObject 
PROCEDURE validateField :
/*------------------------------------------------------------------------------
  Purpose:     Checks whether data has been entered for certain fields based on 
               the chosen option and returns the appropriate list of error numbers.
  Parameters:  OUTPUT pcError AS CHARACTER
  Notes:       validateField is published from updateRecord of the Physical
               Service SmartDataViewer (gsmpyviewv.w).
------------------------------------------------------------------------------*/
DEFINE OUTPUT PARAMETER pcError AS CHARACTER NO-UNDO.

  DO WITH FRAME {&FRAME-NAME}:
    CASE raOption:SCREEN-VALUE:
      WHEN 'R':U THEN
        IF fiHost:SCREEN-VALUE = '':U OR
          fiNameService:SCREEN-VALUE = '':U OR
          fiAppService:SCREEN-VALUE = '':U THEN
          pcError = '125':U.
      WHEN 'U':U THEN
        IF fiURL:SCREEN-VALUE = '':U THEN
          pcError = '126':U.
      WHEN 'D':U THEN
        IF fiHost:SCREEN-VALUE = '':U OR
          fiNameService:SCREEN-VALUE = '':U OR
          fiAppService:SCREEN-VALUE = '':U OR
          fiURL:SCREEN-VALUE = '':U THEN
          pcError = '127':U.
    END CASE.  /* raOption */  
  END.  /* do with frame */

END PROCEDURE.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

/* ************************  Function Implementations ***************** */

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _FUNCTION getDataValue sObject 
FUNCTION getDataValue RETURNS CHARACTER
  (  ) :
/*------------------------------------------------------------------------------
  Purpose:  Returns the current value of the SmartDataField object.
   Params:  none
    Notes:  This function must be defined by the developer of the object
            to return its value.
------------------------------------------------------------------------------*/
DEFINE VARIABLE cConnectString  AS CHARACTER    NO-UNDO.
DEFINE VARIABLE iURLPos         AS INTEGER      NO-UNDO.

  DO WITH FRAME {&FRAME-NAME}:
    ASSIGN cConnectString = raOption:SCREEN-VALUE + CHR(3).
    IF raOption:SCREEN-VALUE = 'D':U THEN 
    DO:
      iURLPos = INDEX(edEditor:SCREEN-VALUE, '-URL':U).
      ASSIGN 
        cConnectString = cConnectString + 
          SUBSTRING(edEditor:SCREEN-VALUE, 1, iURLPos - 1) + CHR(3) +
          SUBSTRING(edEditor:SCREEN-VALUE, iURLPos).
    END.  /* if option D */
    ELSE
      ASSIGN cConnectString = cConnectString + edEditor:SCREEN-VALUE.
  END.  /* do with frame */

  RETURN cConnectString.  
   /* Function return value. */

END FUNCTION.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

&ANALYZE-SUSPEND _UIB-CODE-BLOCK _FUNCTION setDataValue sObject 
FUNCTION setDataValue RETURNS LOGICAL
  ( pcValue AS CHARACTER ) :
/*------------------------------------------------------------------------------
  Purpose:  This function receives the value for the SmartDataField and assigns it.
   Params:  The parameter and its datatype must be defined by the developer.
    Notes:  
------------------------------------------------------------------------------*/
DEFINE VARIABLE cConnectString  AS CHARACTER    NO-UNDO.
DEFINE VARIABLE cOption         AS CHARACTER    NO-UNDO.

  IF pcValue = '':U OR NUM-ENTRIES(pcValue, CHR(3)) = 0 THEN
    ASSIGN raOption:SCREEN-VALUE IN FRAME {&FRAME-NAME} = 'L':U.
  ELSE DO:
    ASSIGN
      cOption = ENTRY(1, pcValue, CHR(3))
      raOption:SCREEN-VALUE IN FRAME {&FRAME-NAME} = cOption.

    RUN radioChanged (INPUT cOption).

    IF cOption NE 'L':U THEN
    DO:
      cConnectString = ENTRY(2, pcValue, CHR(3)).
      IF cOption = 'D':U THEN
        cConnectString = cConnectString + ENTRY(3, pcValue, CHR(3)).
      RUN parseValue (INPUT cConnectString).
    END.  /* if not Local */

    RUN createString.
  END.  /* else do */
  RETURN TRUE.   /* Function return value. */

END FUNCTION.

/* _UIB-CODE-BLOCK-END */
&ANALYZE-RESUME

