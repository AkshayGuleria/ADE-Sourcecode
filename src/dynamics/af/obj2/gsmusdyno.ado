<?xml version="1.0" encoding="utf-8" ?>
<dataset Transactions="1"><dataset_header DisableRI="yes" DatasetObj="1004928896.09" DateFormat="mdy" FullHeader="no" SCMManaged="yes" YearOffset="1950" DatasetCode="RYCSO" NumericFormat="AMERICAN" NumericDecimal="." OriginatingSite="90" NumericSeparator=","/>
<dataset_records><dataset_transaction TransactionNo="1" TransactionType="DATA"><contained_record DB="icfdb" Table="ryc_smartobject" version_date="10/08/2003" version_time="65370" version_user="admin" deletion_flag="no" entity_mnemonic="RYCSO" key_field_value="124807.9875" record_version_obj="124808.9875" version_number_seq="4.09" secondary_key_value="gsmusdyno#CHR(1)#0" import_version_number_seq="4.09"><smartobject_obj>124807.9875</smartobject_obj>
<object_filename>gsmusdyno</object_filename>
<customization_result_obj>0</customization_result_obj>
<object_type_obj>18007.409</object_type_obj>
<product_module_obj>1004874683.09</product_module_obj>
<layout_obj>0</layout_obj>
<object_description>Dynamic DataObject from gsmusdyno</object_description>
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
<run_persistent>no</run_persistent>
<run_when>ANY</run_when>
<shutdown_message_text></shutdown_message_text>
<required_db_list></required_db_list>
<sdo_smartobject_obj>0</sdo_smartobject_obj>
<extends_smartobject_obj>0</extends_smartobject_obj>
<security_smartobject_obj>124807.9875</security_smartobject_obj>
<object_is_runnable>yes</object_is_runnable>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124819.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>AssignList</attribute_label>
<character_value>;;</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124820.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>BaseQuery</attribute_label>
<character_value>FOR EACH gsm_user NO-LOCK,
      FIRST gsm_user_category WHERE gsm_user_category.user_category_obj = gsm_user.user_category_obj NO-LOCK,
      FIRST gsc_language WHERE gsc_language.language_obj = gsm_user.language_obj OUTER-JOIN NO-LOCK
    BY gsm_user.user_login_name INDEXED-REPOSITION</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124821.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DataColumns</attribute_label>
<character_value>user_obj,confirm_password,c_profile_user,fmt_user_create_time,fmt_user_login_time,fmt_password_fail_time,fmt_password_create_time,fmt_password_expire_time,user_category_obj,user_category_code,user_full_name,user_login_name,user_creation_date,user_creation_time,profile_user,created_from_profile_user_obj,external_userid,user_password,password_minimum_length,password_preexpired,password_fail_count,password_fail_date,password_fail_time,password_creation_date,password_creation_time,password_expiry_date,password_expiry_time,update_password_history,check_password_history,last_login_date,last_login_time,language_obj,language_code,disabled,password_expiry_days,maintain_system_data,default_login_company_obj,user_email_address,development_user,oldPasswordExpiryDate</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124822.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DataColumnsByTable</attribute_label>
<character_value>user_obj,user_category_obj,user_full_name,user_login_name,user_creation_date,user_creation_time,profile_user,created_from_profile_user_obj,external_userid,user_password,password_minimum_length,password_preexpired,password_fail_count,password_fail_date,password_fail_time,password_creation_date,password_creation_time,password_expiry_date,password_expiry_time,update_password_history,check_password_history,last_login_date,last_login_time,language_obj,disabled,password_expiry_days,maintain_system_data,default_login_company_obj,user_email_address,development_user;user_category_code;language_code;confirm_password,c_profile_user,fmt_user_create_time,fmt_user_login_time,fmt_password_fail_time,fmt_password_create_time,fmt_password_expire_time,oldPasswordExpiryDate</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124818.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>DataLogicProcedure</attribute_label>
<character_value>af/app/gsmusplipp.p</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>3000052947.09</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>Label</attribute_label>
<character_value>User</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>3000052764.09</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>PhysicalTables</attribute_label>
<character_value>gsm_user,gsm_user_category,gsc_language</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124809.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderDBNames</attribute_label>
<character_value>ICFDB,_&lt;CALC&gt;,_&lt;CALC&gt;,_&lt;CALC&gt;,_&lt;CALC&gt;,_&lt;CALC&gt;,_&lt;CALC&gt;,_&lt;CALC&gt;,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,ICFDB,_&lt;CALC&gt;</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124810.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderFieldDataTypes</attribute_label>
<character_value>decimal,character,character,character,character,character,character,character,decimal,character,character,character,date,integer,logical,decimal,integer,character,integer,logical,integer,date,integer,date,integer,date,integer,logical,logical,date,integer,decimal,character,logical,integer,logical,decimal,character,logical,Date</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124811.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderFieldWidths</attribute_label>
<character_value>24,35,15,8,8,8,8,8,24,20,140,30,4,4,1,24,4,70,4,1,?,4,4,4,4,4,4,1,1,4,4,24,20,1,?,1,24,70,1,3</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124812.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderInheritValidations</attribute_label>
<character_value>Yes,No,No,No,No,No,No,No,Yes,Yes,No,No,No,No,No,Yes,No,No,No,No,No,No,No,No,No,No,No,No,No,No,No,Yes,Yes,No,No,No,Yes,No,No,No</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124813.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderJoinCode</attribute_label>
<character_value>?#CHR(5)#gsm_user_category.user_category_obj = gsm_user.user_category_obj#CHR(5)#ICFDB.gsc_language.language_obj = ICFDB.gsm_user.language_obj</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124814.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderOptionList</attribute_label>
<character_value>NO-LOCK INDEXED-REPOSITION</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124815.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderOrderList</attribute_label>
<character_value>ICFDB.gsm_user.user_login_name|yes</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124816.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderTableList</attribute_label>
<character_value>ICFDB.gsm_user,ICFDB.gsm_user_category WHERE ICFDB.gsm_user ...,ICFDB.gsc_language WHERE ICFDB.gsm_user ...</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124817.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>QueryBuilderTableOptionList</attribute_label>
<character_value>, FIRST USED, FIRST OUTER USED</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>no</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124823.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>Tables</attribute_label>
<character_value>gsm_user,gsm_user_category,gsc_language</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
<contained_record DB="icfdb" Table="ryc_attribute_value"><attribute_value_obj>124824.9875</attribute_value_obj>
<object_type_obj>18007.409</object_type_obj>
<container_smartobject_obj>0</container_smartobject_obj>
<smartobject_obj>124807.9875</smartobject_obj>
<object_instance_obj>0</object_instance_obj>
<constant_value>no</constant_value>
<attribute_label>UpdatableColumnsByTable</attribute_label>
<character_value>user_category_obj,user_full_name,user_login_name,user_creation_date,user_creation_time,profile_user,created_from_profile_user_obj,external_userid,user_password,password_minimum_length,password_preexpired,password_fail_count,password_fail_date,password_fail_time,password_creation_date,password_creation_time,password_expiry_date,password_expiry_time,update_password_history,check_password_history,last_login_date,last_login_time,language_obj,disabled,password_expiry_days,maintain_system_data,default_login_company_obj,user_email_address,development_user;;;confirm_password</character_value>
<integer_value>0</integer_value>
<date_value>?</date_value>
<decimal_value>0</decimal_value>
<logical_value>no</logical_value>
<primary_smartobject_obj>124807.9875</primary_smartobject_obj>
<render_type_obj>0</render_type_obj>
<applies_at_runtime>yes</applies_at_runtime>
</contained_record>
</contained_record>
</dataset_transaction>
</dataset_records>
</dataset>