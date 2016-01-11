<?xml version="1.0" encoding="utf-8" ?>
<dataset Transactions="1"><dataset_header DisableRI="yes" DatasetObj="1004928896.09" DateFormat="mdy" FullHeader="no" SCMManaged="yes" YearOffset="1950" DatasetCode="RYCSO" NumericFormat="AMERICAN" NumericDecimal="." OriginatingSite="90" NumericSeparator=","/>
<dataset_records><dataset_transaction TransactionNo="1" TransactionType="DATA"><contained_record DB="icfdb" Table="ryc_smartobject" version_date="06/23/2003" version_time="37610" version_user="admin" deletion_flag="no" entity_mnemonic="RYCSO" key_field_value="1000007680.81" record_version_obj="1000007681.81" version_number_seq="20.81" secondary_key_value="ScmXrefOEMCombo#CHR(1)#0" import_version_number_seq="20.81"><smartobject_obj>1000007680.81</smartobject_obj>
<object_filename>ScmXrefOEMCombo</object_filename>
<customization_result_obj>0</customization_result_obj>
<object_type_obj>1005111020.101</object_type_obj>
<product_module_obj>1004874707.09</product_module_obj>
<layout_obj>0</layout_obj>
<object_description>OEM DynCombo for gsm_scm_xref</object_description>
<object_path>ry/obj</object_path>
<object_extension></object_extension>
<static_object>no</static_object>
<generic_object>no</generic_object>
<template_smartobject>no</template_smartobject>
<system_owned>no</system_owned>
<deployment_type></deployment_type>
<design_only>no</design_only>
<runnable_from_menu>no</runnable_from_menu>
<container_object>yes</container_object>
<disabled>no</disabled>
<run_persistent>yes</run_persistent>
<run_when>ANY</run_when>
<shutdown_message_text></shutdown_message_text>
<required_db_list></required_db_list>
<sdo_smartobject_obj>0</sdo_smartobject_obj>
<extends_smartobject_obj>0</extends_smartobject_obj>
<security_smartobject_obj>1000007680.81</security_smartobject_obj>
<object_is_runnable>yes</object_is_runnable>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007695.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BaseQueryString</attribute_label>
<character_value>FOR EACH gsc_entity_mnemonic
      WHERE gsc_entity_mnemonic.entity_mnemonic = &quot;GSCOT&quot;
 OR gsc_entity_mnemonic.entity_mnemonic = &quot;GSCPM&quot; NO-LOCK INDEXED-REPOSITION</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007700.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BuildSequence</attribute_label>
<character_value></character_value>
<integer_value>1</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007686.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DescSubstitute</attribute_label>
<character_value>&amp;1 / &amp;2</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007694.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayDataType</attribute_label>
<character_value>CHARACTER</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007685.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayedField</attribute_label>
<character_value>gsc_entity_mnemonic.entity_mnemonic,gsc_entity_mnemonic.entity_mnemonic_description</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007693.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayFormat</attribute_label>
<character_value>X(256)</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007701.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>EnableField</attribute_label>
<character_value></character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>yes</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007688.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>FieldLabel</attribute_label>
<character_value>Owning Entity</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007690.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>FieldTooltip</attribute_label>
<character_value>Select option from list</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007692.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyDataType</attribute_label>
<character_value>character</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007687.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyField</attribute_label>
<character_value>gsc_entity_mnemonic.entity_mnemonic</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007691.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyFormat</attribute_label>
<character_value>X(8)</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007698.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>ParentFilterQuery</attribute_label>
<character_value>?</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007696.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryTables</attribute_label>
<character_value>gsc_entity_mnemonic</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007689.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>RenderingProcedure</attribute_label>
<character_value>adm2/dyncombo.w</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007684.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>SDFFileName</attribute_label>
<character_value>ScmXrefOEMCombo</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007697.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>SuperProcedure</attribute_label>
<character_value></character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>1000007699.81</attribute_value_obj>
<object_type_obj>1005111020.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>1000007680.81</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>WIDTH-CHARS</attribute_label>
<character_value></character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>8</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>1000007680.81</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
</contained_record>
</dataset_transaction>
</dataset_records>
</dataset>