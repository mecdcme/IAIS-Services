drop table COMPILE_GUID;

drop table DIVISION;

drop table DIVISION_STATUS;

drop table DOCUMENT;

drop table GSBPM;

drop table GSBPM_STAT_PROC;

drop table INPUT;

drop table LAW;

drop table LAW_TYPE;

drop table OUTPUT;

drop table QUALITY_CONTROL;

drop table SOFTWARE;

drop table STANDARD;

drop table STANDARD_TASKS;

drop table STATISTICAL_PROCESS;

drop table STAT_METHODS;

drop table STAT_PROC_INPUT;

drop table STAT_PROC_LAW;

drop table STAT_PROC_OUTPUT;

drop table STAT_PROC_QUAL_CONTR;

drop table STAT_PROC_SOFTWARE;

drop table STAT_PROC_STANDARD;

drop table STAT_PROC_STAND_TASKS;

drop table STAT_PROC_STAT_METH;

drop table STAT_RPOC_DOCUMENT;

drop table SYS_ROLE;

drop table SYS_USER;

/*==============================================================*/
/* Table: COMPILE_GUID                                          */
/*==============================================================*/
create table COMPILE_GUID (
   ID_COMPILE_GUIDE     NUMERIC              not null,
   NAME_EN              VARCHAR(50)          null,
   NAME_RO              VARCHAR(50)          null,
   NAME_RU              VARCHAR(50)          null,
   GUIDE_EN             VARCHAR(1000)        null,
   GUIDE_RO             VARCHAR(1000)        null,
   GUIDE_RU             VARCHAR(1000)        null,
   EXAMPLE_EN           VARCHAR(1000)        null,
   EXAMPLE_RO           VARCHAR(1000)        null,
   EXAMPLE_RU           VARCHAR(1000)        null,
   constraint PK_COMPILE_GUID primary key (ID_COMPILE_GUIDE)
);

/*==============================================================*/
/* Table: DIVISION                                              */
/*==============================================================*/
create table DIVISION (
   DIVISION_ID          NUMERIC              not null,
   NAME_EN              VARCHAR(100)         not null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   ACRONYM_EN           VARCHAR(10)          not null,
   ACRONYM_RO           VARCHAR(10)          null,
   ACRONYM_RU           VARCHAR(10)          null,
   DESCRIPTION_EN       VARCHAR(255)         null,
   DESCRIPTION_RO       VARCHAR(255)         null,
   DESCRIPTION_RU       VARCHAR(255)         null,
   STATUS_ID            NUMERIC              null,
   SYS_DATE             DATE                 null,
   SYS_USER             VARCHAR(50)          null,
   constraint PK_DIVISION primary key (DIVISION_ID)
);

/*==============================================================*/
/* Table: DIVISION_STATUS                                       */
/*==============================================================*/
create table DIVISION_STATUS (
   ID                   NUMERIC              not null,
   NAME                 VARCHAR(10)          not null,
   constraint PK_DIVISION_STATUS primary key (ID)
);

/*==============================================================*/
/* Table: DOCUMENT                                              */
/*==============================================================*/
create table DOCUMENT (
   ID_DOCUMENT          NUMERIC              not null,
   DOC_YEAR             NUMERIC              null,
   TITLE_EN             VARCHAR(255)         null,
   TITLE_RO             VARCHAR(255)         null,
   TITLE_RU             VARCHAR(255)         null,
   LINK_EN              VARCHAR(100)         null,
   LINK_RO              VARCHAR(100)         null,
   LINK_RU              VARCHAR(100)         null,
   FILE_NAME            VARCHAR(50)          null,
   FILE_EXTENTIONS      VARCHAR(20)          null,
   FILE_PATH            VARCHAR(100)         null,
   constraint PK_DOCUMENT primary key (ID_DOCUMENT)
);

/*==============================================================*/
/* Table: GSBPM                                                 */
/*==============================================================*/
create table GSBPM (
   ID_PHASE             NUMERIC              not null,
   ID_PHASE_VERS        VARCHAR(10)          not null,
   NUMBER_PHASE         VARCHAR(20)          null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   PARENT_PHASE         NUMERIC              null,
   constraint PK_GSBPM primary key (ID_PHASE, ID_PHASE_VERS)
);

/*==============================================================*/
/* Table: GSBPM_STAT_PROC                                       */
/*==============================================================*/
create table GSBPM_STAT_PROC (
   ID                   NUMERIC              not null,
   ID_STAT_PROC         NUMERIC              null,
   ID_PHASE             NUMERIC              null,
   ID_PHASE_VERS        VARCHAR(10)          null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   DIVISION_ID          NUMERIC              null,
   DESCRIPTION_EN       VARCHAR(1000)        null,
   DESCRIPTION_RO       VARCHAR(1000)        null,
   DESCRIPTION_RU       VARCHAR(1000)        null,
   NEXT_STEP            NUMERIC              null,
   PREVIOUS_STEP        NUMERIC              null,
   SYS_DATE             DATE                 null,
   SYS_USER             VARCHAR(50)          null,
   constraint PK_GSBPM_STAT_PROC primary key (ID)
);

/*==============================================================*/
/* Table: INPUT                                                 */
/*==============================================================*/
create table INPUT (
   ID_INPUT             NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_INPUT primary key (ID_INPUT)
);

/*==============================================================*/
/* Table: LAW                                                   */
/*==============================================================*/
create table LAW (
   ID_LAW               NUMERIC              not null,
   ID_LAW_TYPE          NUMERIC              null,
   LAW_NUMBER           VARCHAR(20)          null,
   LAW_DATE             DATE                 null,
   TITLE_EN             VARCHAR(100)         null,
   TITLE_RO             VARCHAR(100)         null,
   TITLE_RU             VARCHAR(100)         null,
   LINK_EN              VARCHAR(255)         null,
   LINK_RO              VARCHAR(255)         null,
   LINK_RU              VARCHAR(255)         null,
   FILE_NAME_EN         VARCHAR(100)         null,
   FILE_NAME_RO         VARCHAR(100)         null,
   FILE_NAME_RU         VARCHAR(100)         null,
   FILE_EN              VARCHAR(255)         null,
   FILE_RO              VARCHAR(255)         null,
   FILE_RU              VARCHAR(255)         null,
   constraint PK_LAW primary key (ID_LAW)
);

comment on column LAW.LAW_NUMBER is
'Number of law';

comment on column LAW.LAW_DATE is
'Date whe law is approved';

comment on column LAW.TITLE_EN is
'Title of law';

comment on column LAW.TITLE_RO is
'Title of law';

comment on column LAW.TITLE_RU is
'Title of law';

comment on column LAW.FILE_NAME_EN is
'File name';

comment on column LAW.FILE_NAME_RO is
'File name';

comment on column LAW.FILE_NAME_RU is
'File name';

comment on column LAW.FILE_EN is
'Byte array or path';

comment on column LAW.FILE_RO is
'Byte array or path';

comment on column LAW.FILE_RU is
'Byte array or path';

/*==============================================================*/
/* Table: LAW_TYPE                                              */
/*==============================================================*/
create table LAW_TYPE (
   ID_LAW_TYPE          NUMERIC              not null,
   TYPE_EN              VARCHAR(255)         null,
   TYPE_RO              VARCHAR(255)         null,
   TYPE_RU              VARCHAR(255)         null,
   constraint PK_LAW_TYPE primary key (ID_LAW_TYPE)
);

/*==============================================================*/
/* Table: OUTPUT                                                */
/*==============================================================*/
create table OUTPUT (
   ID_OUTPUT            NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_OUTPUT primary key (ID_OUTPUT)
);

/*==============================================================*/
/* Table: QUALITY_CONTROL                                       */
/*==============================================================*/
create table QUALITY_CONTROL (
   ID_QUAL_CONTR        NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_QUALITY_CONTROL primary key (ID_QUAL_CONTR)
);

/*==============================================================*/
/* Table: SOFTWARE                                              */
/*==============================================================*/
create table SOFTWARE (
   ID_SOFT              NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_SOFTWARE primary key (ID_SOFT)
);

/*==============================================================*/
/* Table: STANDARD                                              */
/*==============================================================*/
create table STANDARD (
   ID_STANDARD          NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_STANDARD primary key (ID_STANDARD)
);

/*==============================================================*/
/* Table: STANDARD_TASKS                                        */
/*==============================================================*/
create table STANDARD_TASKS (
   ID_STANDARD_TASK     NUMERIC              not null,
   NAME_EN              VARCHAR(500)         null,
   NAME_RO              VARCHAR(500)         null,
   NAME_RU              VARCHAR(500)         null,
   constraint PK_STANDARD_TASKS primary key (ID_STANDARD_TASK)
);

/*==============================================================*/
/* Table: STATISTICAL_PROCESS                                   */
/*==============================================================*/
create table STATISTICAL_PROCESS (
   ID_STAT_PROC         NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   ACRONYM_EN           VARCHAR(50)          null,
   ACRONYM_RO           VARCHAR(50)          null,
   ACRONYM_RU           VARCHAR(50)          null,
   DIVISION_ID          NUMERIC              null,
   RESP_FULL_NAME       VARCHAR(100)         null,
   RESP_PHONE           VARCHAR(20)          null,
   RESP_MAIL            VARCHAR(50)          null,
   SYS_DATE             DATE                 null,
   SYS_USER             VARCHAR(50)          null,
   constraint PK_STATISTICAL_PROCESS primary key (ID_STAT_PROC)
);

/*==============================================================*/
/* Table: STAT_METHODS                                          */
/*==============================================================*/
create table STAT_METHODS (
   ID_METHODS           NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_STAT_METHODS primary key (ID_METHODS)
);

/*==============================================================*/
/* Table: STAT_PROC_INPUT                                       */
/*==============================================================*/
create table STAT_PROC_INPUT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_INPUT             NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_INPUT primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_LAW                                         */
/*==============================================================*/
create table STAT_PROC_LAW (
   ID_STAT_PROC         NUMERIC              not null,
   ID_LAW               NUMERIC              not null,
   constraint PK_STAT_PROC_LAW primary key (ID_STAT_PROC, ID_LAW)
);

/*==============================================================*/
/* Table: STAT_PROC_OUTPUT                                      */
/*==============================================================*/
create table STAT_PROC_OUTPUT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_OUTPUT            NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_OUTPUT primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_QUAL_CONTR                                  */
/*==============================================================*/
create table STAT_PROC_QUAL_CONTR (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_QUAL_CONTR        NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_QUAL_CONTR primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_SOFTWARE                                    */
/*==============================================================*/
create table STAT_PROC_SOFTWARE (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_SOFT              NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_SOFTWARE primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STANDARD                                    */
/*==============================================================*/
create table STAT_PROC_STANDARD (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_STANDARD          NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_STANDARD primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STAND_TASKS                                 */
/*==============================================================*/
create table STAT_PROC_STAND_TASKS (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_STANDARD_TASK     NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_STAND_TASKS primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STAT_METH                                   */
/*==============================================================*/
create table STAT_PROC_STAT_METH (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_METHODS           NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_PROC_STAT_METH primary key (ID)
);

/*==============================================================*/
/* Table: STAT_RPOC_DOCUMENT                                    */
/*==============================================================*/
create table STAT_RPOC_DOCUMENT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_DOCUMENT          NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   "ORDER"              NUMERIC              null,
   constraint PK_STAT_RPOC_DOCUMENT primary key (ID)
);

/*==============================================================*/
/* Table: SYS_ROLE                                              */
/*==============================================================*/
create table SYS_ROLE (
   ROLE_CODE            VARCHAR(20)          not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   DESCRIPTION_EN       VARCHAR(1000)        null,
   DESCRIPTION_RO       VARCHAR(1000)        null,
   DESCRIPTION_RU       VARCHAR(1000)        null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   SYS_DATE             DATE                 null,
   SYS_USER             VARCHAR(50)          null,
   constraint PK_SYS_ROLE primary key (ROLE_CODE)
);

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
create table SYS_USER (
   USERNAME             VARCHAR(50)          not null,
   PASS_HASH            VARCHAR(500)         null,
   PASS_CHANGE          NUMERIC              null,
   SYS_ADMIN            NUMERIC              null,
   NAME                 VARCHAR(100)         null,
   SURNAME              VARCHAR(100)         null,
   PATRONIMIC           VARCHAR(100)         null,
   PHONE                VARCHAR(50)          null,
   E_MAIL               VARCHAR(100)         null,
   APP_LANG             VARCHAR(10)          null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   SYS_DATE             DATE                 null,
   ROLE_CODE            VARCHAR(20)          null,
   constraint PK_SYS_USER primary key (USERNAME)
);

alter table DIVISION
   add constraint FK_DIVISION_REFERENCE_DIVISION foreign key (DIVISION_ID)
      references DIVISION_STATUS (ID)
      on delete restrict on update restrict;

alter table GSBPM_STAT_PROC
   add constraint FK_GSBPM_ST_REFERENCE_SYS_USER foreign key (SYS_USER)
      references SYS_USER (USERNAME)
      on delete restrict on update restrict;

alter table GSBPM_STAT_PROC
   add constraint FK_GSBPM_ST_REFERENCE_STATISTI foreign key (ID_STAT_PROC)
      references STATISTICAL_PROCESS (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table GSBPM_STAT_PROC
   add constraint FK_GSBPM_ST_REFERENCE_GSBPM foreign key (ID_PHASE, ID_PHASE_VERS)
      references GSBPM (ID_PHASE, ID_PHASE_VERS)
      on delete restrict on update restrict;

alter table LAW
   add constraint FK_LAW_REFERENCE_LAW_TYPE foreign key (ID_LAW_TYPE)
      references LAW_TYPE (ID_LAW_TYPE)
      on delete restrict on update restrict;

alter table STATISTICAL_PROCESS
   add constraint FK_STATISTI_REFERENCE_SYS_USER foreign key (SYS_USER)
      references SYS_USER (USERNAME)
      on delete restrict on update restrict;

alter table STATISTICAL_PROCESS
   add constraint FK_STATISTI_REFERENCE_DIVISION foreign key (DIVISION_ID)
      references DIVISION (DIVISION_ID)
      on delete restrict on update restrict;

alter table STAT_PROC_INPUT
   add constraint FK_STAT_PRO_REFERENCE_INPUT foreign key (ID_INPUT)
      references INPUT (ID_INPUT)
      on delete restrict on update restrict;

alter table STAT_PROC_INPUT
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_LAW
   add constraint FK_STAT_PRO_REFERENCE_LAW foreign key (ID_LAW)
      references LAW (ID_LAW)
      on delete restrict on update restrict;

alter table STAT_PROC_LAW
   add constraint FK_STAT_PRO_REFERENCE_STATISTI foreign key (ID_STAT_PROC)
      references STATISTICAL_PROCESS (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_OUTPUT
   add constraint FK_STAT_PRO_REFERENCE_OUTPUT foreign key (ID_OUTPUT)
      references OUTPUT (ID_OUTPUT)
      on delete restrict on update restrict;

alter table STAT_PROC_OUTPUT
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_QUAL_CONTR
   add constraint FK_STAT_PRO_REFERENCE_QUALITY_ foreign key (ID_QUAL_CONTR)
      references QUALITY_CONTROL (ID_QUAL_CONTR)
      on delete restrict on update restrict;

alter table STAT_PROC_QUAL_CONTR
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_SOFTWARE
   add constraint FK_STAT_PRO_REFERENCE_SOFTWARE foreign key (ID_SOFT)
      references SOFTWARE (ID_SOFT)
      on delete restrict on update restrict;

alter table STAT_PROC_SOFTWARE
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_STANDARD
   add constraint FK_STAT_PRO_REFERENCE_STANDARD foreign key (ID_STANDARD)
      references STANDARD (ID_STANDARD)
      on delete restrict on update restrict;

alter table STAT_PROC_STANDARD
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_STAND_TASKS
   add constraint FK_STAT_PRO_REFERENCE_STANDARD foreign key (ID_STANDARD_TASK)
      references STANDARD_TASKS (ID_STANDARD_TASK)
      on delete restrict on update restrict;

alter table STAT_PROC_STAND_TASKS
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_PROC_STAT_METH
   add constraint FK_STAT_PRO_REFERENCE_STAT_MET foreign key (ID_METHODS)
      references STAT_METHODS (ID_METHODS)
      on delete restrict on update restrict;

alter table STAT_PROC_STAT_METH
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table STAT_RPOC_DOCUMENT
   add constraint FK_STAT_RPO_REFERENCE_DOCUMENT foreign key (ID_DOCUMENT)
      references DOCUMENT (ID_DOCUMENT)
      on delete restrict on update restrict;

alter table STAT_RPOC_DOCUMENT
   add constraint FK_STAT_RPO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references GSBPM_STAT_PROC (ID_STAT_PROC)
      on delete restrict on update restrict;

alter table SYS_USER
   add constraint FK_SYS_USER_REFERENCE_SYS_ROLE foreign key (ROLE_CODE)
      references SYS_ROLE (ROLE_CODE)
      on delete restrict on update restrict;
