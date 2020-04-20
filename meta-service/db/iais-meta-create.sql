drop schema if exists iais_meta cascade;

create schema iais_meta;

/*==============================================================*/
/* Table: COMPILE_GUID                                          */
/*==============================================================*/
create table iais_meta.COMPILE_GUID (
   ID				    NUMERIC              not null,
   NAME_EN              VARCHAR(50)          null,
   NAME_RO              VARCHAR(50)          null,
   NAME_RU              VARCHAR(50)          null,
   GUIDE_EN             VARCHAR(1000)        null,
   GUIDE_RO             VARCHAR(1000)        null,
   GUIDE_RU             VARCHAR(1000)        null,
   EXAMPLE_EN           VARCHAR(1000)        null,
   EXAMPLE_RO           VARCHAR(1000)        null,
   EXAMPLE_RU           VARCHAR(1000)        null,
   constraint PK_COMPILE_GUID primary key (ID)
);

/*==============================================================*/
/* Table: DIVISION                                              */
/*==============================================================*/
create table iais_meta.DIVISION (
   ID   		        NUMERIC              not null,
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
   CREATION_DATE        DATE                 null,
   CONTACT_USER         NUMERIC              null,
   constraint PK_DIVISION primary key (ID)
);

/*==============================================================*/
/* Table: DIVISION_STATUS                                       */
/*==============================================================*/
create table iais_meta.DIVISION_STATUS (
   ID                   NUMERIC              not null,
   NAME                 VARCHAR(10)          not null,
   constraint PK_DIVISION_STATUS primary key (ID)
);

/*==============================================================*/
/* Table: DOCUMENT                                              */
/*==============================================================*/
create table iais_meta.PROC_DOCUMENT (
   ID                   NUMERIC              not null,
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
   constraint PK_DOCUMENT primary key (ID)
);

/*==============================================================*/
/* Table: GSBPM                                                 */
/*==============================================================*/
create table iais_meta.GSBPM (
   ID    				NUMERIC              not null,
   ID_PHASE             NUMERIC              not null,
   ID_PHASE_VERS        VARCHAR(10)          not null,
   NUMBER_PHASE         VARCHAR(20)          null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   PARENT_PHASE         NUMERIC              null,
   constraint PK_GSBPM primary key (ID)
);

/*==============================================================*/
/* Table: GSBPM_STAT_PROC                                       */
/*==============================================================*/
create table iais_meta.GSBPM_STAT_PROC (
   ID                   NUMERIC              not null,
   ID_STAT_PROC         NUMERIC              null,
   ID_GSBPM             NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   DIVISION_ID          NUMERIC              null,
   DESCRIPTION_EN       VARCHAR(1000)        null,
   DESCRIPTION_RO       VARCHAR(1000)        null,
   DESCRIPTION_RU       VARCHAR(1000)        null,
   NEXT_STEP            NUMERIC              null,
   PREVIOUS_STEP        NUMERIC              null,
   CREATION_DATE        DATE                 null,
   CONTACT_USER         NUMERIC              null,
   constraint PK_GSBPM_STAT_PROC primary key (ID)
);

/*==============================================================*/
/* Table: PROC_INPUT                                                 */
/*==============================================================*/
create table iais_meta.PROC_INPUT (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_INPUT primary key (ID)
);

/*==============================================================*/
/* Table: LAW                                                   */
/*==============================================================*/
create table iais_meta.LAW (
   ID                   NUMERIC              not null,
   ID_LAW_TYPE          NUMERIC              null,
   LAW_NUMBER           VARCHAR(20)          null,
   LAW_DATE             DATE                 null,
   TITLE_EN             VARCHAR(500)         null,
   TITLE_RO             VARCHAR(500)         null,
   TITLE_RU             VARCHAR(500)         null,
   LINK_EN              VARCHAR(255)         null,
   LINK_RO              VARCHAR(255)         null,
   LINK_RU              VARCHAR(255)         null,
   FILE_NAME_EN         VARCHAR(100)         null,
   FILE_NAME_RO         VARCHAR(100)         null,
   FILE_NAME_RU         VARCHAR(100)         null,
   FILE_EN              VARCHAR(255)         null,
   FILE_RO              VARCHAR(255)         null,
   FILE_RU              VARCHAR(255)         null,
   constraint PK_LAW primary key (ID)
);

comment on column iais_meta.LAW.LAW_NUMBER is
'Number of law';

comment on column iais_meta.LAW.LAW_DATE is
'Date whe law is approved';

comment on column iais_meta.LAW.TITLE_EN is
'Title of law';

comment on column iais_meta.LAW.TITLE_RO is
'Title of law';

comment on column iais_meta.LAW.TITLE_RU is
'Title of law';

comment on column iais_meta.LAW.FILE_NAME_EN is
'File name';

comment on column iais_meta.LAW.FILE_NAME_RO is
'File name';

comment on column iais_meta.LAW.FILE_NAME_RU is
'File name';

comment on column iais_meta.LAW.FILE_EN is
'Byte array or path';

comment on column iais_meta.LAW.FILE_RO is
'Byte array or path';

comment on column iais_meta.LAW.FILE_RU is
'Byte array or path';

/*==============================================================*/
/* Table: LAW_TYPE                                              */
/*==============================================================*/
create table iais_meta.LAW_TYPE (
   ID                   NUMERIC              not null,
   TYPE_EN              VARCHAR(255)         null,
   TYPE_RO              VARCHAR(255)         null,
   TYPE_RU              VARCHAR(255)         null,
   constraint PK_LAW_TYPE primary key (ID)
);

/*==============================================================*/
/* Table: PROC_OUTPUT                                                */
/*==============================================================*/
create table iais_meta.PROC_OUTPUT (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_OUTPUT primary key (ID)
);

/*==============================================================*/
/* Table: QUALITY_CONTROL                                       */
/*==============================================================*/
create table iais_meta.QUALITY_CONTROL (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_QUALITY_CONTROL primary key (ID)
);

/*==============================================================*/
/* Table: SOFTWARE                                              */
/*==============================================================*/
create table iais_meta.SOFTWARE (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(100)         null,
   NAME_RO              VARCHAR(100)         null,
   NAME_RU              VARCHAR(100)         null,
   constraint PK_SOFTWARE primary key (ID)
);

/*==============================================================*/
/* Table: STANDARD                                              */
/*==============================================================*/
create table iais_meta.STANDARD (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_STANDARD primary key (ID)
);

/*==============================================================*/
/* Table: STANDARD_TASKS                                        */
/*==============================================================*/
create table iais_meta.STANDARD_TASKS (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(500)         null,
   NAME_RO              VARCHAR(500)         null,
   NAME_RU              VARCHAR(500)         null,
   constraint PK_STANDARD_TASKS primary key (ID)
);

/*==============================================================*/
/* Table: STATISTICAL_PROCESS                                   */
/*==============================================================*/
create table iais_meta.STATISTICAL_PROCESS (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   ACRONYM_EN           VARCHAR(50)          null,
   ACRONYM_RO           VARCHAR(50)          null,
   ACRONYM_RU           VARCHAR(50)          null,
   DIVISION_ID          NUMERIC              null,
   CREATION_DATE        DATE                 null,
   CONTACT_USER         NUMERIC              null,
   CREATOR_USER         NUMERIC              null,
   constraint PK_STATISTICAL_PROCESS primary key (ID)
);

/*==============================================================*/
/* Table: STAT_METHODS                                          */
/*==============================================================*/
create table iais_meta.STAT_METHODS (
   ID                   NUMERIC              not null,
   NAME_EN              VARCHAR(255)         null,
   NAME_RO              VARCHAR(255)         null,
   NAME_RU              VARCHAR(255)         null,
   constraint PK_STAT_METHODS primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_INPUT                                       */
/*==============================================================*/
create table iais_meta.STAT_PROC_INPUT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_INPUT             NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_INPUT primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_LAW                                         */
/*==============================================================*/
create table iais_meta.STAT_PROC_LAW (
   ID_STAT_PROC         NUMERIC              not null,
   ID_LAW               NUMERIC              not null,
   constraint PK_STAT_PROC_LAW primary key (ID_STAT_PROC, ID_LAW)
);

/*==============================================================*/
/* Table: STAT_PROC_OUTPUT                                      */
/*==============================================================*/
create table iais_meta.STAT_PROC_OUTPUT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_OUTPUT            NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code              NUMERIC              null,
   constraint PK_STAT_PROC_OUTPUT primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_QUAL_CONTR                                  */
/*==============================================================*/
create table iais_meta.STAT_PROC_QUAL_CONTR (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_QUAL_CONTR        NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_QUAL_CONTR primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_SOFTWARE                                    */
/*==============================================================*/
create table iais_meta.STAT_PROC_SOFTWARE (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_SOFT              NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_SOFTWARE primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STANDARD                                    */
/*==============================================================*/
create table iais_meta.STAT_PROC_STANDARD (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_STANDARD          NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_STANDARD primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STAND_TASKS                                 */
/*==============================================================*/
create table iais_meta.STAT_PROC_STAND_TASKS (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_STANDARD_TASK     NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_STAND_TASKS primary key (ID)
);

/*==============================================================*/
/* Table: STAT_PROC_STAT_METH                                   */
/*==============================================================*/
create table iais_meta.STAT_PROC_STAT_METH (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_METHODS           NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_PROC_STAT_METH primary key (ID)
);

/*==============================================================*/
/* Table: STAT_RPOC_DOCUMENT                                    */
/*==============================================================*/
create table iais_meta.STAT_PROC_DOCUMENT (
   ID                   NUMERIC              not null,
   ID_GSBPM_STAT_PROC   NUMERIC              null,
   ID_DOCUMENT          NUMERIC              null,
   START_DATE           DATE                 null,
   END_DATE             DATE                 null,
   order_code           NUMERIC              null,
   constraint PK_STAT_RPOC_DOCUMENT primary key (ID)
);

alter table iais_meta.DIVISION
   add constraint FK_DIVISION_REFERENCE_DIVISION foreign key (STATUS_ID)
      references iais_meta.DIVISION_STATUS (ID)
      on delete restrict on update restrict;


alter table iais_meta.GSBPM_STAT_PROC
   add constraint FK_GSBPM_ST_REFERENCE_STATISTI foreign key (ID_STAT_PROC)
      references iais_meta.STATISTICAL_PROCESS (ID)
      on delete restrict on update restrict;

alter table iais_meta.GSBPM_STAT_PROC
   add constraint FK_GSBPM_ST_REFERENCE_GSBPM foreign key (ID_GSBPM)
      references iais_meta.GSBPM (ID)
      on delete restrict on update restrict;

alter table iais_meta.LAW
   add constraint FK_LAW_REFERENCE_LAW_TYPE foreign key (ID_LAW_TYPE)
      references iais_meta.LAW_TYPE (ID)
      on delete restrict on update restrict;


alter table iais_meta.STATISTICAL_PROCESS
   add constraint FK_STATISTI_REFERENCE_DIVISION foreign key (DIVISION_ID)
      references iais_meta.DIVISION (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_INPUT
   add constraint FK_STAT_PRO_REFERENCE_INPUT foreign key (ID_INPUT)
      references iais_meta.PROC_INPUT (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_INPUT
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_LAW
   add constraint FK_STAT_PRO_REFERENCE_LAW foreign key (ID_LAW)
      references iais_meta.LAW (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_LAW
   add constraint FK_STAT_PRO_REFERENCE_STATISTI foreign key (ID_STAT_PROC)
      references iais_meta.STATISTICAL_PROCESS (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_OUTPUT
   add constraint FK_STAT_PRO_REFERENCE_OUTPUT foreign key (ID_OUTPUT)
      references iais_meta.PROC_OUTPUT (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_OUTPUT
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_QUAL_CONTR
   add constraint FK_STAT_PRO_REFERENCE_QUALITY_ foreign key (ID_QUAL_CONTR)
      references iais_meta.QUALITY_CONTROL (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_QUAL_CONTR
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_SOFTWARE
   add constraint FK_STAT_PRO_REFERENCE_SOFTWARE foreign key (ID_SOFT)
      references iais_meta.SOFTWARE (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_SOFTWARE
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STANDARD
   add constraint FK_STAT_PRO_REFERENCE_STANDARD foreign key (ID_STANDARD)
      references iais_meta.STANDARD (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STANDARD
   add constraint FK_STAT_PROC_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
   references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STAND_TASKS
   add constraint FK_STAT_PROC_REFERENCE_STANDARD foreign key (ID_STANDARD_TASK)
      references iais_meta.STANDARD_TASKS (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STAND_TASKS
   add constraint FK_STAT_PROC_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STAT_METH
   add constraint FK_STAT_PRO_REFERENCE_STAT_MET foreign key (ID_METHODS)
      references iais_meta.STAT_METHODS (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_STAT_METH
   add constraint FK_STAT_PRO_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_DOCUMENT
   add constraint FK_STAT_PROC_REFERENCE_DOCUMENT foreign key (ID_DOCUMENT)
      references iais_meta.PROC_DOCUMENT (ID)
      on delete restrict on update restrict;

alter table iais_meta.STAT_PROC_DOCUMENT
   add constraint FK_STAT_PROC_REFERENCE_GSBPM_ST foreign key (ID_GSBPM_STAT_PROC)
      references iais_meta.GSBPM_STAT_PROC (ID)
      on delete restrict on update restrict;
