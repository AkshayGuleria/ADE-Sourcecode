<?xml version="1.0" encoding="utf-8" ?>
<dataset Transactions="1"><dataset_header DisableRI="yes" DatasetObj="1004928896.09" DateFormat="mdy" FullHeader="no" SCMManaged="yes" YearOffset="1950" DatasetCode="RYCSO" NumericFormat="AMERICAN" NumericDecimal="." OriginatingSite="90" NumericSeparator=","/>
<dataset_records><dataset_transaction TransactionNo="1" TransactionType="DATA"><contained_record DB="icfdb" Table="ryc_smartobject" version_date="05/27/2003" version_time="63901" version_user="admin" deletion_flag="no" entity_mnemonic="RYCSO" key_field_value="124026.9875" record_version_obj="124027.9875" version_number_seq="1.09" secondary_key_value="lkObjectFileNameSecStruc#CHR(1)#0" import_version_number_seq="1.09"><smartobject_obj>124026.9875</smartobject_obj>
<object_filename>lkObjectFileNameSecStruc</object_filename>
<customization_result_obj>0</customization_result_obj>
<object_type_obj>1005097658.101</object_type_obj>
<product_module_obj>1004874683.09</product_module_obj>
<layout_obj>0</layout_obj>
<object_description>Lookup Object Filename - GSMSS</object_description>
<object_path>af/obj2</object_path>
<object_extension></object_extension>
<static_object>no</static_object>
<generic_object>no</generic_object>
<template_smartobject>no</template_smartobject>
<system_owned>no</system_owned>
<deployment_type></deployment_type>
<design_only>no</design_only>
<runnable_from_menu>no</runnable_from_menu>
<container_object>no</container_object>
<disabled>no</disabled>
<run_persistent>yes</run_persistent>
<run_when>ANY</run_when>
<shutdown_message_text></shutdown_message_text>
<required_db_list></required_db_list>
<sdo_smartobject_obj>0</sdo_smartobject_obj>
<extends_smartobject_obj>0</extends_smartobject_obj>
<security_smartobject_obj>124026.9875</security_smartobject_obj>
<object_is_runnable>yes</object_is_runnable>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124037.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BaseQueryString</attribute_label>
<character_value>FOR EACH ryc_smartobject NO-LOCK,
EACH gsc_product_module NO-LOCK
WHERE gsc_product_module.product_module_obj = ryc_smartobject.product_module_obj
BY ryc_smartobject.object_filename</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124040.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BrowseFieldDataTypes</attribute_label>
<character_value>character,character,character</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124041.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BrowseFieldFormats</attribute_label>
<character_value>X(70)|X(35)|X(35)</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124039.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BrowseFields</attribute_label>
<character_value>ryc_smartobject.object_filename,ryc_smartobject.object_description,gsc_product_module.product_module_code</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124042.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BrowseTitle</attribute_label>
<character_value>Lookup Objects</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124036.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayDataType</attribute_label>
<character_value>character</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124029.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayedField</attribute_label>
<character_value>ryc_smartobject.object_filename</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124035.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DisplayFormat</attribute_label>
<character_value>X(70)</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124047.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>EnableField</attribute_label>
<character_value></character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>yes</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124031.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>FieldLabel</attribute_label>
<character_value>Object filename</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124032.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>FieldTooltip</attribute_label>
<character_value>Press F4 for Object Lookup</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124034.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyDataType</attribute_label>
<character_value>decimal</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124030.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyField</attribute_label>
<character_value>ryc_smartobject.smartobject_obj</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124033.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>KeyFormat</attribute_label>
<character_value>-&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;9.999999999</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124043.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>LookupImage</attribute_label>
<character_value>adeicon/select.bmp</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124044.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>ParentField</attribute_label>
<character_value>product_module_obj</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124045.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>ParentFilterQuery</attribute_label>
<character_value>ryc_smartobject.product_module_obj = DECIMAL(&apos;&amp;1&apos;)</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124038.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryTables</attribute_label>
<character_value>ryc_smartobject,gsc_product_module</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124028.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>SDFFileName</attribute_label>
<character_value>lkObjectFileNameSecStruc</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124046.9875</attribute_value_obj>
<object_type_obj>1005097658.101</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124026.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>WIDTH-CHARS</attribute_label>
<character_value></character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>57.4</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124026.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
</contained_record>
</dataset_transaction>
</dataset_records>
</dataset>