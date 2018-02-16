/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/12/15 14:40:55                          */
/*==============================================================*/
drop database  if exists hisv13;
create database hisv13 default charset = utf8 ;
use hisv13;

/*==============================================================*/
/* Table: T_DISEASE_INFO                                        */
/*==============================================================*/
create table T_DISEASE_INFO
(
   DISEASE_CODE         varchar(100) not null comment '疾病编码',
   DISEASE_NAME         varchar(200) not null comment '疾病名称',
   DISEASE_PINYIN_CODE  varchar(50) comment '疾病拼音码',
   DISEASE_WUBI_CODE    varchar(100) comment '疾病五笔码',
   DISEASE_STATE        varchar(100) comment '疾病状态：0(禁用),疾病信息被禁用;1(可用),疾病信息可用',
   DISEASE_STANDARD     varchar(10) not null comment '标库类型:参见6.12
            2-(ICD10),疾病信息使用ICD10标准;
            3-(其他),疾病信息使用的其他标准.',
   DATA_SOURCE          varchar(50) comment '数据来源,1或者为空时为医院 2新农合 3社保',
   UPLOAD_FLAG          varchar(2) comment '上传标志,0未上传,1已经上传',
   AREA_CODE            varchar(12) not null comment '地区编码',
   ARG1                 varchar(100) comment '预留1',
   ARG2                 varchar(100) comment '预留2',
   ARG3                 varchar(100) comment '预留3',
   ARG4                 varchar(100) comment '预留4',
   ARG5                 varchar(100) comment '预留5',
   ARG6                 varchar(100) comment '预留6',
   ARG7                 varchar(100) comment '预留7',
   ARG8                 varchar(100) comment '预留8',
   ARG9                 varchar(100) comment '预留9',
   ARG10                varchar(100) comment '预留10',
   CREATE_TIME          datetime comment '记录创建时间'
);

alter table T_DISEASE_INFO comment '疾病字典信息表';

/*==============================================================*/
/* Index: I_DISEASE_CODE                                        */
/*==============================================================*/
create index I_DISEASE_CODE on T_DISEASE_INFO
(
   DISEASE_CODE
);

/*==============================================================*/
/* Index: I_DISEASE_NAME                                        */
/*==============================================================*/
create index I_DISEASE_NAME on T_DISEASE_INFO
(
   DISEASE_NAME
);

/*==============================================================*/
/* Index: I_T_DISEASE_INFO                                      */
/*==============================================================*/
create index I_T_DISEASE_INFO on T_DISEASE_INFO
(
   UPLOAD_FLAG
);

/*==============================================================*/
/* Index: I_AREA_CODE                                           */
/*==============================================================*/
create index I_AREA_CODE on T_DISEASE_INFO
(
   AREA_CODE
);

/*==============================================================*/
/* Table: T_INSURED_PERSON_INFO                                 */
/*==============================================================*/
create table T_INSURED_PERSON_INFO
(
   AREA_CODE            varchar(12) not null comment '地区编码',
   INSURED_YEAR         varchar(5) not null comment '参保年度：(格式YYYY)',
   BASE_INSURE_NO       varchar(50) not null comment '医保号',
   NAME                 varchar(30) not null comment '姓名',
   SEX                  varchar(2) not null comment '性别,1(男性),2(女性),0(未知)',
   ID_TYPE              varchar(2) comment '证件类别:参见6.4',
   ID_NUMBER            varchar(30) comment '证件号码',
   BIRTHDAY             date comment '出生日期格式(YYYY-MM-DD)',
   NATION               varchar(3) comment '民族:参见6.13',
   MARRIAGE_STATE       varchar(2) comment '婚姻状况:参见6.14',
   POLICY               varchar(2) comment '政治面貌:参见6.15',
   EDUCATION            varchar(2) comment '学历:参见6.16',
   PHONE                varchar(20) comment '电话',
   MOBILEPHONE          varchar(20) comment '手机',
   HOME_ADDRESS         varchar(100) comment '家庭住址',
   PROFESSION           varchar(20) comment '职业',
   COMPANY_NAME         varchar(60) comment '工作单位',
   INDUSTRY             varchar(2) comment '单位性质:参见6.18',
   PERSONAL_ATTRIBUTES  varchar(2) not null comment '人员属性:参见6.19',
   PERSONAL_IDENTITY    varchar(2) comment '健康状况:参见6.20',
   INSURED_PROPERTY     varchar(2) not null comment '参保性质:参见6.21',
   INSURED_PROPERTY_CHANGETIME datetime comment '参保性质变更时间:格式(yyyy-MM-dd HH:mm:ss)',
   BANK_CODE            varchar(100) comment '银行代码:参见6.22',
   BANK_NAME            varchar(100) comment '银行名称',
   PAYMENT_ACCOUNT_NAME varchar(80) comment '银行帐户名称',
   CLAIM_PAYMENT_ACCOUNT varchar(100) comment '银行帐号',
   DATA_SOURCE          varchar(50) comment '数据来源',
   UPLOAD_FLAG          varchar(2) comment '上传标志',
   OPERATE_TYPE         varchar(4) comment '参见6.23参保人导入操作类型',
   OPERATE_REMARK       varchar(120) comment '操作备注',
   ARG1                 varchar(100) comment '预留1',
   ARG2                 varchar(100) comment '预留2',
   ARG3                 varchar(100) comment '预留3',
   ARG4                 varchar(100) comment '预留4',
   ARG5                 varchar(100) comment '预留5',
   ARG6                 varchar(100) comment '预留6',
   ARG7                 varchar(100) comment '预留7',
   ARG8                 varchar(100) comment '预留8',
   ARG9                 varchar(100) comment '预留9',
   ARG10                varchar(100) comment '预留10',
   CREATE_TIME          datetime comment '记录创建时间'
);

alter table T_INSURED_PERSON_INFO comment '参保人员信息上传表';

/*==============================================================*/
/* Index: I_AREA_CODE                                           */
/*==============================================================*/
create index I_AREA_CODE on T_INSURED_PERSON_INFO
(
   AREA_CODE
);

/*==============================================================*/
/* Index: I_BASE_INSURE_NO                                      */
/*==============================================================*/
create index I_BASE_INSURE_NO on T_INSURED_PERSON_INFO
(
   BASE_INSURE_NO
);

/*==============================================================*/
/* Index: I_NAME                                                */
/*==============================================================*/
create index I_NAME on T_INSURED_PERSON_INFO
(
   NAME
);

/*==============================================================*/
/* Index: I_T_DISEASE_INFO                                      */
/*==============================================================*/
create index I_T_DISEASE_INFO on T_INSURED_PERSON_INFO
(
   UPLOAD_FLAG
);

/*==============================================================*/
/* Index: I_INSURED_YEAR                                        */
/*==============================================================*/
create index I_INSURED_YEAR on T_INSURED_PERSON_INFO
(
   INSURED_YEAR
);

/*==============================================================*/
/* Table: T_MEDICAL_ORG_INFO                                    */
/*==============================================================*/
create table T_MEDICAL_ORG_INFO
(
   HOSPITAL_NUMBER      varchar(40) not null comment '医院编码',
   HOSPITAL_NAME        varchar(100) not null comment '医院名称',
   HOSPITAL_GRADE       varchar(12) not null comment '医院等级',
   HOSPITAL_AREA_CODE   varchar(12) comment '医院地区编码',
   LINKMAN              varchar(40) comment '联系人',
   TELEPHONE            varchar(30) comment '联系电话',
   ADDRESS              varchar(50) comment '地址',
   DATA_SOURCE          varchar(50) comment '数据来源,1或者为空时为医院 2新农合 3社保',
   UPLOAD_FLAG          varchar(2) comment '上传标志,0未上传,1已经上传',
   OPERATE_TYPE         varchar(2) not null comment '操作类型',
   ARG1                 varchar(100) comment '预留1',
   ARG2                 varchar(100) comment '预留2',
   ARG3                 varchar(100) comment '预留3',
   ARG4                 varchar(100) comment '预留4',
   ARG5                 varchar(100) comment '预留5',
   ARG6                 varchar(100) comment '预留6',
   ARG7                 varchar(100) comment '预留7',
   ARG8                 varchar(100) comment '预留8',
   ARG9                 varchar(100) comment '预留9',
   ARG10                varchar(100) comment '预留10',
   CREATE_TIME          datetime comment '记录创建时间'
);

alter table T_MEDICAL_ORG_INFO comment '医疗机构信息上传表';

/*==============================================================*/
/* Index: I_HOSPITAL_NUMBER                                     */
/*==============================================================*/
create index I_HOSPITAL_NUMBER on T_MEDICAL_ORG_INFO
(
   HOSPITAL_NUMBER
);

/*==============================================================*/
/* Index: I_T_DISEASE_INFO                                      */
/*==============================================================*/
create index I_T_DISEASE_INFO on T_MEDICAL_ORG_INFO
(
   UPLOAD_FLAG
);

/*==============================================================*/
/* Index: HOSPITAL_AREA_CODE                                    */
/*==============================================================*/
create index HOSPITAL_AREA_CODE on T_MEDICAL_ORG_INFO
(
   HOSPITAL_AREA_CODE
);

/*==============================================================*/
/* Table: t_medical_hospital_list                               */
/*==============================================================*/
create table t_medical_hospital_list
(
   MEDICAL_HOSPITAL_LIST_ID int not null auto_increment comment '目录ID',
   TRIPARTITE_NUMBER    varchar(40) comment '第三方编码',
   HIS_CODE             varchar(40) not null,
   MEDICAL_ITEM_NAME    varchar(200) not null,
   SORT                 varchar(50) comment '类别',
   SPEC                 varchar(130) comment '规格',
   UNIT                 varchar(30) comment '单位',
   LIMITED_PRICE        numeric(17,4) comment '限价金额',
   HOSPITAL_PRICE       numeric(17,4) comment '零售价',
   BETAKE_GENRE         varchar(200) comment '剂型',
   IS_UPLOAD            varchar(1) not null,
   UPDATE_TIME          date comment '是否已上传',
   LIABLE_EXPENSE       numeric(4,2) comment '自费比',
   PAYMENT_PROPERTY     varchar(40) comment '支付类型',
   CREATE_TIME          datetime comment '记录创建时间',
   primary key (MEDICAL_HOSPITAL_LIST_ID)
);

alter table t_medical_hospital_list comment '医院医疗目录表';

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on t_medical_hospital_list
(
   HIS_CODE
);

/*==============================================================*/
/* Index: Index_2                                               */
/*==============================================================*/
create index Index_2 on t_medical_hospital_list
(
   MEDICAL_ITEM_NAME
);

/*==============================================================*/
/* Index: Index_3                                               */
/*==============================================================*/
create index Index_3 on t_medical_hospital_list
(
   SORT
);

/*==============================================================*/
/* Index: Index_4                                               */
/*==============================================================*/
create index Index_4 on t_medical_hospital_list
(
   SPEC
);

/*==============================================================*/
/* Index: Index_5                                               */
/*==============================================================*/
create index Index_5 on t_medical_hospital_list
(
   UNIT
);

/*==============================================================*/
/* Index: Index_6                                               */
/*==============================================================*/
create index Index_6 on t_medical_hospital_list
(
   BETAKE_GENRE
);

/*==============================================================*/
/* Index: Index_7                                               */
/*==============================================================*/
create index Index_7 on t_medical_hospital_list
(
   IS_UPLOAD
);

/*==============================================================*/
/* Table: t_medical_info                                        */
/*==============================================================*/
create table t_medical_info
(
   info_id              bigint(17) not null auto_increment comment '医保通医疗信息ID',
   card_id              varchar(18) comment '证件号码',
   name                 varchar(40) not null comment '姓名',
   sex                  varchar(1) not null comment '性别',
   in_hospital_date     datetime not null comment '就诊日期',
   medical_cause        varchar(4) default '1' comment '出险原因',
   medical_type_code    varchar(1) default '2' comment '就诊方式',
   medical_state_code   varchar(1) default '3' comment '就诊状态',
   disease_sort         varchar(80) default 'Z' comment '疾病类别',
   initial_diagnoses    varchar(50) comment '初始诊断',
   In_hospital_number   varchar(40) comment '医院住院/门诊号',
   hospital_department_name varchar(60) comment '就诊科室',
   bed_number           varchar(30) comment '床位号',
   phone                varchar(50) comment '联系电话',
   his_number           varchar(50) comment 'HIS对应号',
   society_insurance    varchar(1) default '9' comment '是否参加社保',
   society_insurance_name varchar(40) comment '参加何种社保',
   else_insurance       varchar(1) default '0' comment '是否参加其他保险',
   remark               varchar(50) comment '备注',
   out_hospital_diagnoses varchar(50) comment '离院诊断',
   out_hospital_state_code varchar(1) default '1' comment '离院状态',
   out_hospital_type_code varchar(1) default '1' comment '离院方式',
   leave_hospital_date  datetime comment '离院日期',
   transfered_hospital  varchar(50) comment '转往医院',
   master_doctor        varchar(40) comment '诊治医生',
   underway_criterion   numeric(14,4) comment '起付线',
   base_insurance       numeric(14,4) comment '基本医疗保险金额',
   complementarity_insurance numeric(14,4) comment '补充医疗保险金额',
   create_sign          varchar(1) default '0' comment '导入标志',
   balance_sign         varchar(1) default '0' comment '结算标志',
   insurance_name       varchar(50) comment '社保名称',
   insurance_number     varchar(50) comment '社保号码',
   plantform_id         numeric(17) comment '对应平台id',
   base_insure_no       varchar(50) comment '基本医疗参保号',
   insure_year          varchar(5) comment '基本医疗参保年度',
   bank_code            varchar(10) comment '银行编码',
   account_bank_name    varchar(60) comment '开户行',
   account_no           varchar(60) comment '开户账号',
   account_name         varchar(60) comment '开户名',
   in_disease_code      varchar(100) comment '目前运用于大病业务，以后会考虑将疾病运字典用于所有判断病情的地方 ,如果存在多个疾病，中间以“|”隔开(单竖线)',
   db_compensatable_money numeric(14,4) comment '大病本次赔付总金额',
   check_dossier_number varchar(40) comment '基本医保核对档案号',
   hospital_number      varchar(40) comment '就诊医院编号(基本医保机构医院编号)',
   card_type            varchar(20) comment '证件类别',
   new_baby_name        varchar(40) comment '新生儿姓名：值不为空时，说明是新生儿',
   birth_date           datetime comment '出生日期',
   create_time          datetime comment '记录的创建时间',
   primary key (info_id)
);

alter table t_medical_info comment '病人医疗信息表';

/*==============================================================*/
/* Index: _WA_Sys_balance_sign_2B0A656D                         */
/*==============================================================*/
create index _WA_Sys_balance_sign_2B0A656D on t_medical_info
(
   balance_sign
);

/*==============================================================*/
/* Index: _WA_Sys_base_insurance_2B0A656D                       */
/*==============================================================*/
create index _WA_Sys_base_insurance_2B0A656D on t_medical_info
(
   base_insurance
);

/*==============================================================*/
/* Index: _WA_Sys_bed_number_2B0A656D                           */
/*==============================================================*/
create index _WA_Sys_bed_number_2B0A656D on t_medical_info
(
   bed_number
);

/*==============================================================*/
/* Index: _WA_Sys_card_id_2B0A656D                              */
/*==============================================================*/
create index _WA_Sys_card_id_2B0A656D on t_medical_info
(
   card_id
);

/*==============================================================*/
/* Index: _WA_Sys_complementarity_insurance_2B0A656D            */
/*==============================================================*/
create index _WA_Sys_complementarity_insurance_2B0A656D on t_medical_info
(
   complementarity_insurance
);

/*==============================================================*/
/* Index: _WA_Sys_create_sign_2B0A656D                          */
/*==============================================================*/
create index _WA_Sys_create_sign_2B0A656D on t_medical_info
(
   create_sign
);

/*==============================================================*/
/* Index: _WA_Sys_disease_sort_2B0A656D                         */
/*==============================================================*/
create index _WA_Sys_disease_sort_2B0A656D on t_medical_info
(
   disease_sort
);

/*==============================================================*/
/* Index: _WA_Sys_else_insurance_2B0A656D                       */
/*==============================================================*/
create index _WA_Sys_else_insurance_2B0A656D on t_medical_info
(
   else_insurance
);

/*==============================================================*/
/* Index: _WA_Sys_his_number_2B0A656D                           */
/*==============================================================*/
create index _WA_Sys_his_number_2B0A656D on t_medical_info
(
   his_number
);

/*==============================================================*/
/* Index: _WA_Sys_hospital_department_name_2B0A656D             */
/*==============================================================*/
create index _WA_Sys_hospital_department_name_2B0A656D on t_medical_info
(
   hospital_department_name
);

/*==============================================================*/
/* Index: _WA_Sys_in_hospital_date_2B0A656D                     */
/*==============================================================*/
create index _WA_Sys_in_hospital_date_2B0A656D on t_medical_info
(
   in_hospital_date
);

/*==============================================================*/
/* Index: _WA_Sys_In_hospital_numbe_2B0A656D                    */
/*==============================================================*/
create index _WA_Sys_In_hospital_numbe_2B0A656D on t_medical_info
(
   In_hospital_number
);

/*==============================================================*/
/* Index: _WA_Sys_initial_diagnoses_2B0A656D                    */
/*==============================================================*/
create index _WA_Sys_initial_diagnoses_2B0A656D on t_medical_info
(
   initial_diagnoses
);

/*==============================================================*/
/* Index: _WA_Sys_leave_hospital_date_2B0A656D                  */
/*==============================================================*/
create index _WA_Sys_leave_hospital_date_2B0A656D on t_medical_info
(
   leave_hospital_date
);

/*==============================================================*/
/* Index: _WA_Sys_master_doctor_2B0A656D                        */
/*==============================================================*/
create index _WA_Sys_master_doctor_2B0A656D on t_medical_info
(
   master_doctor
);

/*==============================================================*/
/* Index: _WA_Sys_medical_cause_2B0A656D                        */
/*==============================================================*/
create index _WA_Sys_medical_cause_2B0A656D on t_medical_info
(
   medical_cause
);

/*==============================================================*/
/* Index: _WA_Sys_medical_state_code_2B0A656D                   */
/*==============================================================*/
create index _WA_Sys_medical_state_code_2B0A656D on t_medical_info
(
   medical_state_code
);

/*==============================================================*/
/* Index: _WA_Sys_medical_type_code_2B0A656D                    */
/*==============================================================*/
create index _WA_Sys_medical_type_code_2B0A656D on t_medical_info
(
   medical_type_code
);

/*==============================================================*/
/* Index: _WA_Sys_out_hospital_diagnoses_2B0A656D               */
/*==============================================================*/
create index _WA_Sys_out_hospital_diagnoses_2B0A656D on t_medical_info
(
   out_hospital_diagnoses
);

/*==============================================================*/
/* Index: _WA_Sys_out_hospital_state_code_2B0A656D              */
/*==============================================================*/
create index _WA_Sys_out_hospital_state_code_2B0A656D on t_medical_info
(
   out_hospital_state_code
);

/*==============================================================*/
/* Index: _WA_Sys_out_hospital_type_code_2B0A656D               */
/*==============================================================*/
create index _WA_Sys_out_hospital_type_code_2B0A656D on t_medical_info
(
   out_hospital_type_code
);

/*==============================================================*/
/* Index: _WA_Sys_phone_2B0A656D                                */
/*==============================================================*/
create index _WA_Sys_phone_2B0A656D on t_medical_info
(
   phone
);

/*==============================================================*/
/* Index: _WA_Sys_sex_2B0A656D                                  */
/*==============================================================*/
create index _WA_Sys_sex_2B0A656D on t_medical_info
(
   sex
);

/*==============================================================*/
/* Index: _WA_Sys_society_insurance_2B0A656D                    */
/*==============================================================*/
create index _WA_Sys_society_insurance_2B0A656D on t_medical_info
(
   society_insurance
);

/*==============================================================*/
/* Index: _WA_Sys_society_insurance_name_2B0A656D               */
/*==============================================================*/
create index _WA_Sys_society_insurance_name_2B0A656D on t_medical_info
(
   society_insurance_name
);

/*==============================================================*/
/* Index: _WA_Sys_transfered_hospital_2B0A656D                  */
/*==============================================================*/
create index _WA_Sys_transfered_hospital_2B0A656D on t_medical_info
(
   transfered_hospital
);

/*==============================================================*/
/* Index: _WA_Sys_underway_criterion_2B0A656D                   */
/*==============================================================*/
create index _WA_Sys_underway_criterion_2B0A656D on t_medical_info
(
   underway_criterion
);

/*==============================================================*/
/* Index: _WA_Sys_query_case_key2_2B0A656D                      */
/*==============================================================*/
create index _WA_Sys_query_case_key2_2B0A656D on t_medical_info
(
   in_hospital_date,
   In_hospital_number
);

/*==============================================================*/
/* Index: _WA_Sys_query_case_key3_2B0A656D                      */
/*==============================================================*/
create index _WA_Sys_query_case_key3_2B0A656D on t_medical_info
(
   in_hospital_date,
   In_hospital_number,
   hospital_number
);

/*==============================================================*/
/* Table: t_prescribe                                           */
/*==============================================================*/
create table t_prescribe
(
   prescribe_id         bigint(17) not null comment '处方id',
   his_number           varchar(50) not null comment 'HIS对应号(客户住院号)',
   prescribe_number     varchar(18) not null comment '医院处方号',
   prescribe_doctor     varchar(40) comment '处方医生',
   prescribe_date       datetime not null comment '医院处方日期',
   cost_sum             numeric(17,4) comment '费用总额',
   create_sign          varchar(1) not null default '0' comment '生成标志 0==未上传，1==已经上传,2==已经作废',
   prescribe_main_id    numeric(17) comment '平台id',
   in_hospital_date     datetime comment '就诊日期',
   hospital_number      varchar(40) comment '就诊医院编号(基本医保机构医院编号，大病使用)',
   primary key (prescribe_id)
);

alter table t_prescribe comment '处方主表';

/*==============================================================*/
/* Index: _WA_Sys_cost_sum_17036CC0                             */
/*==============================================================*/
create index _WA_Sys_cost_sum_17036CC0 on t_prescribe
(
   cost_sum
);

/*==============================================================*/
/* Index: _WA_Sys_create_sign_17036CC0                          */
/*==============================================================*/
create index _WA_Sys_create_sign_17036CC0 on t_prescribe
(
   create_sign
);

/*==============================================================*/
/* Index: _WA_Sys_HIS_number_17036CC0                           */
/*==============================================================*/
create index _WA_Sys_HIS_number_17036CC0 on t_prescribe
(
   his_number
);

/*==============================================================*/
/* Index: _WA_Sys_prescribe_date_17036CC0                       */
/*==============================================================*/
create index _WA_Sys_prescribe_date_17036CC0 on t_prescribe
(
   prescribe_date
);

/*==============================================================*/
/* Index: _WA_Sys_prescribe_doctor_17036CC0                     */
/*==============================================================*/
create index _WA_Sys_prescribe_doctor_17036CC0 on t_prescribe
(
   prescribe_doctor
);

/*==============================================================*/
/* Index: _WA_Sys_prescribe_number_17036CC0                     */
/*==============================================================*/
create index _WA_Sys_prescribe_number_17036CC0 on t_prescribe
(
   prescribe_number
);

/*==============================================================*/
/* Table: t_prescription_detail                                 */
/*==============================================================*/
create table t_prescription_detail
(
   prescribe_id         bigint(17) not null comment '处方id',
   prescription_detail_id bigint(17) not null auto_increment comment '处方明细id',
   prescribe_number     varchar(18) not null comment '医院处方号',
   his_code             varchar(40) not null comment 'HIS编码(医疗目录的编码)',
   his_medical_name     varchar(200) comment '医疗目录名称',
   unit_price           numeric(18,4) not null comment '医院单价',
   quantity             numeric(13,4) not null comment '项目数量',
   cost_sum             numeric(11,4) not null comment '金额',
   sign                 varchar(200) comment '标志',
   SCALE_COMPENSATE_RATE numeric(6,4) comment '基本医疗乙类自费比例',
   primary key (prescription_detail_id)
);

alter table t_prescription_detail comment '处方明细表';

/*==============================================================*/
/* Index: _WA_Sys_cost_sum_25518C17                             */
/*==============================================================*/
create index _WA_Sys_cost_sum_25518C17 on t_prescription_detail
(
   cost_sum
);

/*==============================================================*/
/* Index: _WA_Sys_HIS_code_25518C17                             */
/*==============================================================*/
create index _WA_Sys_HIS_code_25518C17 on t_prescription_detail
(
   his_code
);

/*==============================================================*/
/* Index: _WA_Sys_his_medical_name_25518C17                     */
/*==============================================================*/
create index _WA_Sys_his_medical_name_25518C17 on t_prescription_detail
(
   his_medical_name
);

/*==============================================================*/
/* Index: _WA_Sys_prescribe_id_25518C17                         */
/*==============================================================*/
create index _WA_Sys_prescribe_id_25518C17 on t_prescription_detail
(
   prescribe_id
);

/*==============================================================*/
/* Index: _WA_Sys_prescribe_number_25518C17                     */
/*==============================================================*/
create index _WA_Sys_prescribe_number_25518C17 on t_prescription_detail
(
   prescribe_number
);

/*==============================================================*/
/* Index: _WA_Sys_quantity_25518C17                             */
/*==============================================================*/
create index _WA_Sys_quantity_25518C17 on t_prescription_detail
(
   quantity
);

/*==============================================================*/
/* Index: _WA_Sys_sign_25518C17                                 */
/*==============================================================*/
create index _WA_Sys_sign_25518C17 on t_prescription_detail
(
   sign
);

/*==============================================================*/
/* Index: _WA_Sys_unit_price_25518C17                           */
/*==============================================================*/
create index _WA_Sys_unit_price_25518C17 on t_prescription_detail
(
   unit_price
);

/*==============================================================*/
/* Index: uq_index_prescribe_id_sign                            */
/*==============================================================*/
create unique index uq_index_prescribe_id_sign on t_prescription_detail
(
   prescribe_id,
   sign
);

