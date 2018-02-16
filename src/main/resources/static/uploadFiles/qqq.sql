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
   DISEASE_CODE         varchar(100) not null comment '��������',
   DISEASE_NAME         varchar(200) not null comment '��������',
   DISEASE_PINYIN_CODE  varchar(50) comment '����ƴ����',
   DISEASE_WUBI_CODE    varchar(100) comment '���������',
   DISEASE_STATE        varchar(100) comment '����״̬��0(����),������Ϣ������;1(����),������Ϣ����',
   DISEASE_STANDARD     varchar(10) not null comment '�������:�μ�6.12
            2-(ICD10),������Ϣʹ��ICD10��׼;
            3-(����),������Ϣʹ�õ�������׼.',
   DATA_SOURCE          varchar(50) comment '������Դ,1����Ϊ��ʱΪҽԺ 2��ũ�� 3�籣',
   UPLOAD_FLAG          varchar(2) comment '�ϴ���־,0δ�ϴ�,1�Ѿ��ϴ�',
   AREA_CODE            varchar(12) not null comment '��������',
   ARG1                 varchar(100) comment 'Ԥ��1',
   ARG2                 varchar(100) comment 'Ԥ��2',
   ARG3                 varchar(100) comment 'Ԥ��3',
   ARG4                 varchar(100) comment 'Ԥ��4',
   ARG5                 varchar(100) comment 'Ԥ��5',
   ARG6                 varchar(100) comment 'Ԥ��6',
   ARG7                 varchar(100) comment 'Ԥ��7',
   ARG8                 varchar(100) comment 'Ԥ��8',
   ARG9                 varchar(100) comment 'Ԥ��9',
   ARG10                varchar(100) comment 'Ԥ��10',
   CREATE_TIME          datetime comment '��¼����ʱ��'
);

alter table T_DISEASE_INFO comment '�����ֵ���Ϣ��';

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
   AREA_CODE            varchar(12) not null comment '��������',
   INSURED_YEAR         varchar(5) not null comment '�α���ȣ�(��ʽYYYY)',
   BASE_INSURE_NO       varchar(50) not null comment 'ҽ����',
   NAME                 varchar(30) not null comment '����',
   SEX                  varchar(2) not null comment '�Ա�,1(����),2(Ů��),0(δ֪)',
   ID_TYPE              varchar(2) comment '֤�����:�μ�6.4',
   ID_NUMBER            varchar(30) comment '֤������',
   BIRTHDAY             date comment '�������ڸ�ʽ(YYYY-MM-DD)',
   NATION               varchar(3) comment '����:�μ�6.13',
   MARRIAGE_STATE       varchar(2) comment '����״��:�μ�6.14',
   POLICY               varchar(2) comment '������ò:�μ�6.15',
   EDUCATION            varchar(2) comment 'ѧ��:�μ�6.16',
   PHONE                varchar(20) comment '�绰',
   MOBILEPHONE          varchar(20) comment '�ֻ�',
   HOME_ADDRESS         varchar(100) comment '��ͥסַ',
   PROFESSION           varchar(20) comment 'ְҵ',
   COMPANY_NAME         varchar(60) comment '������λ',
   INDUSTRY             varchar(2) comment '��λ����:�μ�6.18',
   PERSONAL_ATTRIBUTES  varchar(2) not null comment '��Ա����:�μ�6.19',
   PERSONAL_IDENTITY    varchar(2) comment '����״��:�μ�6.20',
   INSURED_PROPERTY     varchar(2) not null comment '�α�����:�μ�6.21',
   INSURED_PROPERTY_CHANGETIME datetime comment '�α����ʱ��ʱ��:��ʽ(yyyy-MM-dd HH:mm:ss)',
   BANK_CODE            varchar(100) comment '���д���:�μ�6.22',
   BANK_NAME            varchar(100) comment '��������',
   PAYMENT_ACCOUNT_NAME varchar(80) comment '�����ʻ�����',
   CLAIM_PAYMENT_ACCOUNT varchar(100) comment '�����ʺ�',
   DATA_SOURCE          varchar(50) comment '������Դ',
   UPLOAD_FLAG          varchar(2) comment '�ϴ���־',
   OPERATE_TYPE         varchar(4) comment '�μ�6.23�α��˵����������',
   OPERATE_REMARK       varchar(120) comment '������ע',
   ARG1                 varchar(100) comment 'Ԥ��1',
   ARG2                 varchar(100) comment 'Ԥ��2',
   ARG3                 varchar(100) comment 'Ԥ��3',
   ARG4                 varchar(100) comment 'Ԥ��4',
   ARG5                 varchar(100) comment 'Ԥ��5',
   ARG6                 varchar(100) comment 'Ԥ��6',
   ARG7                 varchar(100) comment 'Ԥ��7',
   ARG8                 varchar(100) comment 'Ԥ��8',
   ARG9                 varchar(100) comment 'Ԥ��9',
   ARG10                varchar(100) comment 'Ԥ��10',
   CREATE_TIME          datetime comment '��¼����ʱ��'
);

alter table T_INSURED_PERSON_INFO comment '�α���Ա��Ϣ�ϴ���';

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
   HOSPITAL_NUMBER      varchar(40) not null comment 'ҽԺ����',
   HOSPITAL_NAME        varchar(100) not null comment 'ҽԺ����',
   HOSPITAL_GRADE       varchar(12) not null comment 'ҽԺ�ȼ�',
   HOSPITAL_AREA_CODE   varchar(12) comment 'ҽԺ��������',
   LINKMAN              varchar(40) comment '��ϵ��',
   TELEPHONE            varchar(30) comment '��ϵ�绰',
   ADDRESS              varchar(50) comment '��ַ',
   DATA_SOURCE          varchar(50) comment '������Դ,1����Ϊ��ʱΪҽԺ 2��ũ�� 3�籣',
   UPLOAD_FLAG          varchar(2) comment '�ϴ���־,0δ�ϴ�,1�Ѿ��ϴ�',
   OPERATE_TYPE         varchar(2) not null comment '��������',
   ARG1                 varchar(100) comment 'Ԥ��1',
   ARG2                 varchar(100) comment 'Ԥ��2',
   ARG3                 varchar(100) comment 'Ԥ��3',
   ARG4                 varchar(100) comment 'Ԥ��4',
   ARG5                 varchar(100) comment 'Ԥ��5',
   ARG6                 varchar(100) comment 'Ԥ��6',
   ARG7                 varchar(100) comment 'Ԥ��7',
   ARG8                 varchar(100) comment 'Ԥ��8',
   ARG9                 varchar(100) comment 'Ԥ��9',
   ARG10                varchar(100) comment 'Ԥ��10',
   CREATE_TIME          datetime comment '��¼����ʱ��'
);

alter table T_MEDICAL_ORG_INFO comment 'ҽ�ƻ�����Ϣ�ϴ���';

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
   MEDICAL_HOSPITAL_LIST_ID int not null auto_increment comment 'Ŀ¼ID',
   TRIPARTITE_NUMBER    varchar(40) comment '����������',
   HIS_CODE             varchar(40) not null,
   MEDICAL_ITEM_NAME    varchar(200) not null,
   SORT                 varchar(50) comment '���',
   SPEC                 varchar(130) comment '���',
   UNIT                 varchar(30) comment '��λ',
   LIMITED_PRICE        numeric(17,4) comment '�޼۽��',
   HOSPITAL_PRICE       numeric(17,4) comment '���ۼ�',
   BETAKE_GENRE         varchar(200) comment '����',
   IS_UPLOAD            varchar(1) not null,
   UPDATE_TIME          date comment '�Ƿ����ϴ�',
   LIABLE_EXPENSE       numeric(4,2) comment '�Էѱ�',
   PAYMENT_PROPERTY     varchar(40) comment '֧������',
   CREATE_TIME          datetime comment '��¼����ʱ��',
   primary key (MEDICAL_HOSPITAL_LIST_ID)
);

alter table t_medical_hospital_list comment 'ҽԺҽ��Ŀ¼��';

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
   info_id              bigint(17) not null auto_increment comment 'ҽ��ͨҽ����ϢID',
   card_id              varchar(18) comment '֤������',
   name                 varchar(40) not null comment '����',
   sex                  varchar(1) not null comment '�Ա�',
   in_hospital_date     datetime not null comment '��������',
   medical_cause        varchar(4) default '1' comment '����ԭ��',
   medical_type_code    varchar(1) default '2' comment '���﷽ʽ',
   medical_state_code   varchar(1) default '3' comment '����״̬',
   disease_sort         varchar(80) default 'Z' comment '�������',
   initial_diagnoses    varchar(50) comment '��ʼ���',
   In_hospital_number   varchar(40) comment 'ҽԺסԺ/�����',
   hospital_department_name varchar(60) comment '�������',
   bed_number           varchar(30) comment '��λ��',
   phone                varchar(50) comment '��ϵ�绰',
   his_number           varchar(50) comment 'HIS��Ӧ��',
   society_insurance    varchar(1) default '9' comment '�Ƿ�μ��籣',
   society_insurance_name varchar(40) comment '�μӺ����籣',
   else_insurance       varchar(1) default '0' comment '�Ƿ�μ���������',
   remark               varchar(50) comment '��ע',
   out_hospital_diagnoses varchar(50) comment '��Ժ���',
   out_hospital_state_code varchar(1) default '1' comment '��Ժ״̬',
   out_hospital_type_code varchar(1) default '1' comment '��Ժ��ʽ',
   leave_hospital_date  datetime comment '��Ժ����',
   transfered_hospital  varchar(50) comment 'ת��ҽԺ',
   master_doctor        varchar(40) comment '����ҽ��',
   underway_criterion   numeric(14,4) comment '����',
   base_insurance       numeric(14,4) comment '����ҽ�Ʊ��ս��',
   complementarity_insurance numeric(14,4) comment '����ҽ�Ʊ��ս��',
   create_sign          varchar(1) default '0' comment '�����־',
   balance_sign         varchar(1) default '0' comment '�����־',
   insurance_name       varchar(50) comment '�籣����',
   insurance_number     varchar(50) comment '�籣����',
   plantform_id         numeric(17) comment '��Ӧƽ̨id',
   base_insure_no       varchar(50) comment '����ҽ�Ʋα���',
   insure_year          varchar(5) comment '����ҽ�Ʋα����',
   bank_code            varchar(10) comment '���б���',
   account_bank_name    varchar(60) comment '������',
   account_no           varchar(60) comment '�����˺�',
   account_name         varchar(60) comment '������',
   in_disease_code      varchar(100) comment 'Ŀǰ�����ڴ�ҵ���Ժ�ῼ�ǽ��������ֵ����������жϲ���ĵط� ,������ڶ���������м��ԡ�|������(������)',
   db_compensatable_money numeric(14,4) comment '�󲡱����⸶�ܽ��',
   check_dossier_number varchar(40) comment '����ҽ���˶Ե�����',
   hospital_number      varchar(40) comment '����ҽԺ���(����ҽ������ҽԺ���)',
   card_type            varchar(20) comment '֤�����',
   new_baby_name        varchar(40) comment '������������ֵ��Ϊ��ʱ��˵����������',
   birth_date           datetime comment '��������',
   create_time          datetime comment '��¼�Ĵ���ʱ��',
   primary key (info_id)
);

alter table t_medical_info comment '����ҽ����Ϣ��';

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
   prescribe_id         bigint(17) not null comment '����id',
   his_number           varchar(50) not null comment 'HIS��Ӧ��(�ͻ�סԺ��)',
   prescribe_number     varchar(18) not null comment 'ҽԺ������',
   prescribe_doctor     varchar(40) comment '����ҽ��',
   prescribe_date       datetime not null comment 'ҽԺ��������',
   cost_sum             numeric(17,4) comment '�����ܶ�',
   create_sign          varchar(1) not null default '0' comment '���ɱ�־ 0==δ�ϴ���1==�Ѿ��ϴ�,2==�Ѿ�����',
   prescribe_main_id    numeric(17) comment 'ƽ̨id',
   in_hospital_date     datetime comment '��������',
   hospital_number      varchar(40) comment '����ҽԺ���(����ҽ������ҽԺ��ţ���ʹ��)',
   primary key (prescribe_id)
);

alter table t_prescribe comment '��������';

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
   prescribe_id         bigint(17) not null comment '����id',
   prescription_detail_id bigint(17) not null auto_increment comment '������ϸid',
   prescribe_number     varchar(18) not null comment 'ҽԺ������',
   his_code             varchar(40) not null comment 'HIS����(ҽ��Ŀ¼�ı���)',
   his_medical_name     varchar(200) comment 'ҽ��Ŀ¼����',
   unit_price           numeric(18,4) not null comment 'ҽԺ����',
   quantity             numeric(13,4) not null comment '��Ŀ����',
   cost_sum             numeric(11,4) not null comment '���',
   sign                 varchar(200) comment '��־',
   SCALE_COMPENSATE_RATE numeric(6,4) comment '����ҽ�������Էѱ���',
   primary key (prescription_detail_id)
);

alter table t_prescription_detail comment '������ϸ��';

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

