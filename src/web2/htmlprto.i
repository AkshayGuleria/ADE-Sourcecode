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
/*
 * Prototype include file: C:\1a\src\web2\htmlprto.i
 * Created from procedure: C:\1a\web2\html-map.p at 19:48 on 04/28/99
 * by the PROGRESS PRO*Tools Prototype Include File Generator
 */

PROCEDURE readOffsets IN SUPER:
  DEFINE INPUT PARAMETER cWebFile AS CHARACTER.
END PROCEDURE.

PROCEDURE outputFields IN SUPER:
END PROCEDURE.

PROCEDURE inputFields IN SUPER:
END PROCEDURE.

PROCEDURE initializeObject IN SUPER:
END PROCEDURE.

PROCEDURE htmAssociate IN SUPER:
  DEFINE INPUT PARAMETER htmField AS CHARACTER.
  DEFINE INPUT PARAMETER wdtField AS CHARACTER.
  DEFINE INPUT PARAMETER widHandle AS HANDLE.
END PROCEDURE.

PROCEDURE getNextHtmlField IN SUPER:
  DEFINE INPUT-OUTPUT PARAMETER next-line AS CHARACTER.
  DEFINE INPUT-OUTPUT PARAMETER line-no AS INTEGER.
  DEFINE INPUT-OUTPUT PARAMETER start-line-no AS INTEGER.
  DEFINE INPUT-OUTPUT PARAMETER start-line-offset AS INTEGER.
  DEFINE INPUT-OUTPUT PARAMETER end-line-no AS INTEGER.
  DEFINE INPUT-OUTPUT PARAMETER end-line-offset AS INTEGER.
  DEFINE INPUT-OUTPUT PARAMETER field-def AS CHARACTER.
  DEFINE INPUT-OUTPUT PARAMETER clip-bytes AS INTEGER.
END PROCEDURE.

PROCEDURE findRecords IN SUPER:
END PROCEDURE.

PROCEDURE enableFields IN SUPER:
END PROCEDURE.

PROCEDURE displayFields IN SUPER:
END PROCEDURE.

PROCEDURE dispatchUtilityProc IN SUPER:
  DEFINE INPUT PARAMETER p_method AS CHARACTER.
  DEFINE INPUT PARAMETER p_field-hdl AS HANDLE.
  DEFINE INPUT PARAMETER p_field-data AS CHARACTER.
  DEFINE INPUT PARAMETER p_item-counter AS INTEGER.
  DEFINE INPUT PARAMETER p_proc-id AS HANDLE.
  DEFINE OUTPUT PARAMETER p_result AS LOGICAL.
END PROCEDURE.

PROCEDURE deleteOffsets IN SUPER:
END PROCEDURE.

PROCEDURE assignFields IN SUPER:
END PROCEDURE.

PROCEDURE start-super-proc IN SUPER:
  DEFINE INPUT PARAMETER pcProcName AS CHARACTER.
END PROCEDURE.

FUNCTION columnHTMLName RETURNS CHARACTER
  (INPUT pColumn AS CHARACTER) IN SUPER.

FUNCTION getCurrentPage RETURNS INTEGER IN SUPER.

FUNCTION convert-datetime RETURNS CHARACTER
  (INPUT p_conversion AS CHARACTER,
   INPUT p_idate AS DATE,
   INPUT p_itime AS INTEGER,
   OUTPUT p_odate AS DATE,
   OUTPUT p_otime AS INTEGER) IN SUPER.

FUNCTION format-datetime RETURNS CHARACTER
  (INPUT p_format AS CHARACTER,
   INPUT p_date AS DATE,
   INPUT p_time AS INTEGER,
   INPUT p_options AS CHARACTER) IN SUPER.

FUNCTION get-cgi RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

FUNCTION get-field RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

FUNCTION get-value RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

FUNCTION get-user-field RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

FUNCTION hidden-field RETURNS CHARACTER
  (INPUT p_name AS CHARACTER,
   INPUT p_value AS CHARACTER) IN SUPER.

FUNCTION hidden-field-list RETURNS CHARACTER
  (INPUT p_name-list AS CHARACTER) IN SUPER.

FUNCTION html-encode RETURNS CHARACTER
  (INPUT p_in AS CHARACTER) IN SUPER.

FUNCTION output-content-type RETURNS LOGICAL
  (INPUT p_type AS CHARACTER) IN SUPER.

FUNCTION output-http-header RETURNS CHARACTER
  (INPUT p_header AS CHARACTER,
   INPUT p_value AS CHARACTER) IN SUPER.

FUNCTION set-user-field RETURNS LOGICAL
  (INPUT p_name AS CHARACTER,
   INPUT p_value AS CHARACTER) IN SUPER.

FUNCTION set-wseu-cookie RETURNS CHARACTER
  (INPUT p_cookie AS CHARACTER) IN SUPER.

FUNCTION url-decode RETURNS CHARACTER
  (INPUT p_in AS CHARACTER) IN SUPER.

FUNCTION url-encode RETURNS CHARACTER
  (INPUT p_value AS CHARACTER,
   INPUT p_enctype AS CHARACTER) IN SUPER.

FUNCTION url-field RETURNS CHARACTER
  (INPUT p_name AS CHARACTER,
   INPUT p_value AS CHARACTER,
   INPUT p_delim AS CHARACTER) IN SUPER.

FUNCTION url-field-list RETURNS CHARACTER
  (INPUT p_name-list AS CHARACTER,
   INPUT p_delim AS CHARACTER) IN SUPER.

FUNCTION url-format RETURNS CHARACTER
  (INPUT p_url AS CHARACTER,
   INPUT p_name-list AS CHARACTER,
   INPUT p_delim AS CHARACTER) IN SUPER.

FUNCTION delete-cookie RETURNS CHARACTER
  (INPUT p_name AS CHARACTER,
   INPUT p_path AS CHARACTER,
   INPUT p_domain AS CHARACTER) IN SUPER.

FUNCTION get-cookie RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

FUNCTION set-cookie RETURNS CHARACTER
  (INPUT p_name AS CHARACTER,
   INPUT p_value AS CHARACTER,
   INPUT p_date AS DATE,
   INPUT p_time AS INTEGER,
   INPUT p_path AS CHARACTER,
   INPUT p_domain AS CHARACTER,
   INPUT p_options AS CHARACTER) IN SUPER.

FUNCTION available-messages RETURNS LOGICAL
  (INPUT p_grp AS CHARACTER) IN SUPER.

FUNCTION get-messages RETURNS CHARACTER
  (INPUT p_grp AS CHARACTER,
   INPUT p_delete AS LOGICAL) IN SUPER.

FUNCTION get-message-groups RETURNS CHARACTER IN SUPER.

FUNCTION output-messages RETURNS INTEGER
  (INPUT p_option AS CHARACTER,
   INPUT p_grp AS CHARACTER,
   INPUT p_message AS CHARACTER) IN SUPER.

FUNCTION queue-message RETURNS INTEGER
  (INPUT p_grp AS CHARACTER,
   INPUT p_message AS CHARACTER) IN SUPER.

FUNCTION check-agent-mode RETURNS LOGICAL
  (INPUT p_mode AS CHARACTER) IN SUPER.

FUNCTION get-config RETURNS CHARACTER
  (INPUT p_name AS CHARACTER) IN SUPER.

