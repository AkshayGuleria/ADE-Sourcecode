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
/*----------------------------------------------------------------------------

File: quryshar.i

Description: Shared variables need by the Query Builder.  These variables
             are used to interface with other tools (such as the UIB).
             
History: This file was originally (pre 1994) in qurywidg.i
            
Input Parameters:
   <None>

Output Parameters:
   <None>

Author: Greg O'Connor

Date Created: 1992 

----------------------------------------------------------------------------*/

/* Max tables in query definition changed to 50 from 20 by Ryan 7/94 */
&Glob MaxTbl 20

/* Make sure the seperator char is not a '!' which will conflict for lable stuff*/
&Global-Define Sep1          CHR (3)
&Global-Define Sep2          CHR (4)


/* Browse/Query Props */

DEFINE {1} SHARED VARIABLE _4GLQury     AS CHAR                    NO-UNDO.
           /* 4GL code defining query                                    */
           
DEFINE {1} SHARED VARIABLE _TblList     AS CHAR                    NO-UNDO.
           /* List of tables in query                                    */
           
DEFINE {1} SHARED VARIABLE _AliasList   AS CHAR                    NO-UNDO.
           /* List of alias tables in query                              */
           
DEFINE {1} SHARED VARIABLE _CallBack    AS CHAR                    NO-UNDO.
           /* Name of callback filter                                    */
           
DEFINE {1} SHARED VARIABLE _FldList     AS CHAR                    NO-UNDO.
           /* List of fields selected for browse                         */
           
DEFINE {1} SHARED VARIABLE _FreeFormEnable AS LOGICAL INITIAL no   NO-UNDO.
           
DEFINE {1} SHARED VARIABLE _OrdList     AS CHAR                    NO-UNDO.
           /* List of fields in BREAK BY phrase                          */
           
DEFINE {1} SHARED VARIABLE _JoinCode    AS CHAR  EXTENT {&MaxTbl}  NO-UNDO.
           /* 4GL Join Code                                              */
           
DEFINE {1} SHARED VARIABLE _Where       AS CHAR  EXTENT {&MaxTbl}  NO-UNDO.
           /* 4GL Where Code                                             */
           
DEFINE {1} SHARED VARIABLE _OptionList  AS CHAR  INIT "NO-LOCK":U  NO-UNDO.
           /* Options: lock & index                                      */
           
DEFINE {1} SHARED VARIABLE _TblOptList  AS CHAR  INIT "NO-LOCK":U  NO-UNDO.
           /* Options: All Fields vs Fields Used and EACH, FIRST vs LAST */
           
DEFINE {1} SHARED VARIABLE _TuneOptions AS CHAR                    NO-UNDO.
           /* Query tuning parameters                                    */
