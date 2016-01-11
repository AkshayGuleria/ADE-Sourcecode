/* Generated by ICF ERwin Template */
/* %Parent %VerbPhrase %Child ON PARENT DELETE SET NULL */

%If(%!=(%Child, %Parent)) {
&IF DEFINED(lbe_%Substr(%Child,%DiagramProp("TableSubstr"))) = 0 &THEN
  DEFINE BUFFER lbe_%Substr(%Child,%DiagramProp("TableSubstr")) FOR %Child.
  &GLOBAL-DEFINE lbe_%Substr(%Child,%DiagramProp("TableSubstr")) yes
&ENDIF
FOR EACH %Child NO-LOCK
   WHERE %JoinFKPK(%Child,%Parent," = "," and")
   ON STOP UNDO, RETURN ERROR "AF^104^%TriggerName.p^update %Child":U:
    FIND FIRST lbe_%Substr(%Child,%DiagramProp("TableSubstr")) EXCLUSIVE-LOCK
         WHERE ROWID(lbe_%Substr(%Child,%DiagramProp("TableSubstr"))) = ROWID(%Child)
         NO-ERROR.
    IF AVAILABLE lbe_%Substr(%Child,%DiagramProp("TableSubstr")) THEN
      DO:
        %ForEachFKAtt(".") {
        ASSIGN %If(%==(%Substr(%AttDomain,1,1), s)) {lbe_%Substr(%Child,%DiagramProp("TableSubstr")).%AttFieldName = "":U }%If(%==(%Substr(%AttDomain,1,1), d)) {lbe_%Substr(%Child,%DiagramProp("TableSubstr")).%AttFieldName = ? }%If(%==(%Substr(%AttDomain,1,1), l)) {lbe_%Substr(%Child,%DiagramProp("TableSubstr")).%AttFieldName = ? }%If(%==(%Substr(%AttDomain,1,1), n)) {lbe_%Substr(%Child,%DiagramProp("TableSubstr")).%AttFieldName = 0 }%If(%==(%Substr(%AttDomain,1,1), o)) { lbe_%Substr(%Child,%DiagramProp("TableSubstr")).%AttFieldName = 0 }}.
      END.
END.
}
%If(%==(%Child, %Parent)) {
FOR EACH lb_table NO-LOCK
   WHERE %JoinFKPK(lb_table,%Parent," = "," and")
   ON STOP UNDO, RETURN ERROR "AF^104^%TriggerName.p^update %Child":U:
    FIND FIRST lb1_table EXCLUSIVE-LOCK
         WHERE ROWID(lb1_table) = ROWID(lb_table)
         NO-ERROR.
    IF AVAILABLE lb1_table THEN
      DO:
        %ForEachFKAtt(".") {
        ASSIGN %If(%==(%Substr(%AttDomain,1,1), s)) {lb1_table.%AttFieldName = "":U }%If(%==(%Substr(%AttDomain,1,1), d)) {lb1_table.%AttFieldName = ? }%If(%==(%Substr(%AttDomain,1,1), l)) {lb1_table.%AttFieldName = ? }%If(%==(%Substr(%AttDomain,1,1), n)) {lb1_table.%AttFieldName = 0 }%If(%==(%Substr(%AttDomain,1,1), o)) { lb1_table.%AttFieldName = 0 }}.
      END.
END.
}
