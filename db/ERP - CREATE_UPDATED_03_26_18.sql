CREATE DATABASE ERP
--DROP DATABASE ERP
GO

USE ERP
GO

---------------------------------------------------------
---------------------------------------------------------
------------------------HR PART 4------------------------

CREATE TABLE TBL_DEPARTMENT(
	DEPT_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY
	,DEPT_NAME VARCHAR(100) NOT NULL
	,DEPT_DESC VARCHAR(100) NOT NULL
)

GO

CREATE TABLE TBL_PAY_GRADE(
	PAY_GRADE_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY
	,PAY_GRADE_NAME VARCHAR(100) NOT NULL
	,PAY_GRADE_MINIMUM FLOAT NOT NULL
	,PAY_GRADE_MAXIMUM FLOAT NOT NULL
)

GO

CREATE TABLE TBL_SALARY_TYPE(
	SALARY_TYPE_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY
	,SALARY_TYPE_NAME VARCHAR(100) NOT NULL
	,SALARY_TYPE_CODE VARCHAR(50) NOT NULL
	,UNITS_PER_YEAR INT NOT NULL
)

GO

CREATE TABLE TBL_COMPENSATION_TYPE(
	COMP_TYPE_ID INT IDENTITY(1,1) PRIMARY KEY
	,COMP_TYPE_NAME NVARCHAR(100) NOT NULL
	,COMP_TYPE_DESC NVARCHAR(MAX) NOT NULL
	,COMP_TYPE_VALUE FLOAT NOT NULL
)

GO

CREATE TABLE TBL_EMPLOYEE(
	EMP_ID INT IDENTITY PRIMARY KEY
	,EMP_NUMBER AS (CONVERT(VARCHAR,YEAR(EMP_HIRE_DATE))+'-'+REPLICATE('0',5-LEN(EMP_ID))
	+CAST(EMP_ID AS VARCHAR))+'-'+LEFT(EMP_FIRST_NAME,1)+LEFT(EMP_LAST_NAME,1)
	,EMP_FIRST_NAME VARCHAR(100) NOT NULL
	,EMP_MIDDLE_NAME VARCHAR(100) NULL
	,EMP_LAST_NAME VARCHAR(100) NOT NULL
	,EMP_HIRE_DATE DATE NOT NULL
	,EMP_STATUS VARCHAR(100) NOT NULL
)

GO

CREATE TABLE TBL_EMPLOYEE_INFO(
	EMP_INFO_ID INT IDENTITY(1,1) PRIMARY KEY
	,EMP_ID INT FOREIGN KEY REFERENCES TBL_EMPLOYEE(EMP_ID)
	,GENDER VARCHAR(6) NOT NULL CHECK(GENDER IN ('MALE','FEMALE'))
	,BIRTHDATE DATE NOT NULL
	,BIRTHPLACE NVARCHAR(100) NOT NULL
	,CONTACT_NO NUMERIC NOT NULL
	,EMAIL_ADD NVARCHAR(100) NOT NULL
	,GSIS_NO NVARCHAR(100) NOT NULL
	,PAGIBIG_NO NVARCHAR(100) NOT NULL
	,PHILHEALTH_NO NVARCHAR(100) NOT NULL
	,SSS_NO NVARCHAR(100) NOT NULL
	,TIN_NO NVARCHAR(100) NOT NULL
	,AGENCY_EMP_NO NVARCHAR(100) NOT NULL
)

GO

CREATE TABLE EMP_RATING_VAL(
	EMP_RATING_ID INT IDENTITY(1,1) PRIMARY KEY
	,RATING_NAME NVARCHAR(100) NOT NULL
	,RATING_DESC NVARCHAR(100) NOT NULL
	,RATING_VAL DECIMAL NOT NULL
)

GO

CREATE TABLE TBL_JOB(
	JOB_ID INT IDENTITY(1,1) PRIMARY KEY
	,JOB_NAME VARCHAR(100) NOT NULL
	,DEPT_ID INT NOT NULL FOREIGN KEY REFERENCES TBL_DEPARTMENT(DEPT_ID)
	,PAY_GRADE_ID INT NOT NULL FOREIGN KEY REFERENCES TBL_PAY_GRADE(PAY_GRADE_ID)
	,SALARY_TYPE_ID INT NOT NULL FOREIGN KEY REFERENCES TBL_SALARY_TYPE(SALARY_TYPE_ID)
)

GO

---------------------------------------------------------
---------------------------------------------------------
------------------------HR PART 1------------------------
create table TBL_EMP_EVALUATION
(
EMP_ID INT FOREIGN KEY REFERENCES TBL_EMPLOYEE(EMP_ID),
MANAGER_ID INT FOREIGN KEY REFERENCES TBL_EMPLOYEE(EMP_ID),
sp01si varchar(150),
sp01aa varchar(150),
sp01q int,
sp01e int,
sp01t int,
sp01a int,
sp01rem  varchar(max),
sp02si  varchar(150),
sp02aa varchar(150),
sp02q int,
sp02e int, 
sp02t int,
sp02a int,
sp02rem varchar(max),
cf01si  varchar(150),
cf01aa varchar(150),
cf01q int,
cf01e int,
cf01t int,
cf01a int,
cf01rem varchar(max),
cf02si  varchar(150),
cf02aa varchar(150),
cf02q int,
cf02e int,
cf02t int,
cf02a int,
cf02rem  varchar(max),
final_grade float
)

GO

--APPLICANT MANAGEMENT

CREATE TABLE TBL_APPMGT_APP
(
APP_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
APP_FNAME VARCHAR(50) NOT NULL,
APP_MNAME VARCHAR(50) NOT NULL,
APP_LNAME VARCHAR(50) NOT NULL,
APP_SUFFIX VARCHAR(50) NOT NULL,
APP_BDATE DATE NOT NULL,
APP_PBIRTH VARCHAR(50) NOT NULL,
APP_SEX VARCHAR(50) NOT NULL,
APP_CIVIL VARCHAR(50) NOT NULL,
APP_RESADD VARCHAR(50) NOT NULL,
APP_PERADD VARCHAR(50) NOT NULL,
APP_CONTACT VARCHAR(50) NOT NULL,
APP_EMAIL VARCHAR(50) NOT NULL,
APP_RESUME VARCHAR (MAX) NOT NULL
)

GO

CREATE TABLE TBL_APPMGT_ADMINPOST
(
ADMINPOST_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
ADMINPOST_DATEAPP DATE NOT NULL,
ADMINPOST_ANNEX VARCHAR(50) NOT NULL,
ADMINPOST_POSTITLE VARCHAR(50) NOT NULL,
ADMINPOST_STATUS VARCHAR(50) NOT NULL,
APP_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_APP(APP_ID)
)

GO

CREATE TABLE TBL_APPMGT_FACULTY
(
FACULTY_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FACULTY_DATEAPP DATE NOT NULL,
FACULTY_POSTITLE VARCHAR(50) NOT NULL,
FACULTY_STATUS VARCHAR(50) NOT NULL,
APP_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_APP(APP_ID)
)

GO

CREATE TABLE TBL_APPMGT_SCHED
(
SCHED_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
APP_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_APP(APP_ID),
SCHED_PRELIM DATE,
SCHED_INITIAL DATE,
SCHED_WRITTEN DATE,
SCHED_SKILL DATE,
SCHED_PANEL DATE,
SCHED_STATUS VARCHAR(50) NOT NULL
)

GO

CREATE TABLE TBL_APPMGT_TRACK
(
TRACK_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
APP_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_APP(APP_ID),
TRACK_TYPE VARCHAR(50) NOT NULL,
TRACK_PRELIM VARCHAR(50) NOT NULL,
TRACK_INITIAL VARCHAR(50) NOT NULL,
TRACK_WRITTEN VARCHAR(50) NOT NULL,
TRACK_SKILL VARCHAR(50) NOT NULL,
TRACK_PANEL VARCHAR(50) NOT NULL,
TRACK_STATUS VARCHAR(50) NOT NULL
)

GO

CREATE TABLE TBL_APPMGT_PSB
(
PSB_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FACULTY_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_FACULTY(FACULTY_ID),
PSB_EVALUATOR VARCHAR(50) NOT NULL,
PSB_EVALDATE DATE NOT NULL,
PSB_PERFORMANCE INT NOT NULL,
PSB_BEHAVIORAL INT NOT NULL,
PSB_EDUC INT NOT NULL,
PSB_TRAINING INT NOT NULL,
PSB_ATTITUDE INT NOT NULL,
PSB_VALUES INT NOT NULL,
PSB_POTENTIALS INT NOT NULL
)

GO


CREATE TABLE TBL_APPMGT_SCORE
(
SCORE_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FACULTY_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_FACULTY(FACULTY_ID),
SCORE_AVE INT NOT NULL,
SCORE_PERFORMANCE INT NOT NULL,
SCORE_BEHAVIORAL INT NOT NULL,
SCORE_EDUC INT NOT NULL,
SCORE_TRAINING INT NOT NULL,
SCORE_ATTITUDE INT NOT NULL,
SCORE_VALUES INT NOT NULL,
SCORE_POTENTIALS INT NOT NULL
)

GO

CREATE TABLE TBL_APPMGT_HIRING
(
HIRING INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
APP_ID INT FOREIGN KEY REFERENCES TBL_APPMGT_APP(APP_ID),
HIRING_DATE DATE NOT NULL,
HIRING_MNGR VARCHAR(50) NOT NULL,
EMP_PDS VARCHAR (MAX)NOT NULL,
EMP_CONTRACT VARCHAR (MAX) NOT NULL
)

GO

--New Hire

CREATE TABLE TBL_NHOB_NH
(
	NEWHIRE_ID INT IDENTITY (1,1) NOT NULL
		CONSTRAINT PK_NEWHIRE_ID PRIMARY KEY,
	EMP_NUMBER AS (CONVERT(VARCHAR, YEAR(EMP_HIRE_DATE))+'-'+REPLICATE('0', 5-LEN(NEWHIRE_ID))+CAST(NEWHIRE_ID AS VARCHAR)+'-'+LEFT(EMP_FIRST_NAME,1)+LEFT(EMP_LAST_NAME,1)),
	EMP_FIRST_NAME VARCHAR(100) NOT NULL,
	EMP_MIDDLE_NAME VARCHAR(100) NOT NULL,
	EMP_LAST_NAME VARCHAR(100) NOT NULL,
	EMP_BIRTHDATE DATE NOT NULL,
	EMP_CONTACT_NO NUMERIC NOT NULL,
	EMP_EMAIL_ADD NVARCHAR(100) NOT NULL,
	EMP_HIRE_DATE DATE NOT NULL,
	HIRING_MANAGER NVARCHAR(100) NOT NULL,
	JOB_ID INT NOT NULL
		CONSTRAINT FK_NHOB_NH_JOB_ID FOREIGN KEY
			REFERENCES TBL_JOB (JOB_ID),
	APPOINTMENT_STATUS VARCHAR(50) NOT NULL,
	ON_BOARD_STATUS VARCHAR(20) NOT NULL,
	DATE_CREATED AS (CONVERT(NVARCHAR,GETDATE(),107)),
)

GO


CREATE TABLE TBL_CHECKLIST
(
	CHECKLIST_ID INT IDENTITY (1,1) NOT NULL
		CONSTRAINT PK_CHECKLIST_ID PRIMARY KEY,
	CHECKLIST_NUMBER AS ('CL'+CONVERT(VARCHAR,YEAR(GETDATE()))+'-'+REPLICATE('0',5-LEN(CHECKLIST_ID))+CAST(CHECKLIST_ID AS VARCHAR)),
	NEWHIRE_ID INT NOT NULL
		CONSTRAINT FK_CHECKLIST_NEWHIRE_ID FOREIGN KEY
			REFERENCES TBL_NHOB_NH (NEWHIRE_ID)
)

GO


CREATE TABLE TBL_CHECKLIST_CONTENT
(
	CHECKLIST_CONTENT_ID INT IDENTITY (1,1) NOT NULL
		CONSTRAINT PK_CHECKLIST_C_ID PRIMARY KEY,
	CHECKLIST_CONTENT_NUMBER AS ('CLC'+CONVERT(VARCHAR,YEAR(GETDATE()))+'-'+REPLICATE('0',5-LEN(CHECKLIST_CONTENT_ID))+CAST(CHECKLIST_CONTENT_ID AS VARCHAR)),
	CONTENT NVARCHAR(200) NOT NULL,
	CLC_STATUS VARCHAR(10) NOT NULL,
	CHECKLIST_ID INT NOT NULL
		CONSTRAINT FK_CLC_CHECKLIST_ID FOREIGN KEY
			REFERENCES TBL_CHECKLIST (CHECKLIST_ID)
)

GO

CREATE TABLE TBL_DOCUMENT_FILES
(
	DOC_FILE_ID INT IDENTITY (1,1) NOT NULL
		CONSTRAINT PK_DOC_FILE_ID PRIMARY KEY,
	DOC_FILE_NAME NVARCHAR(100) NOT NULL,
	DOC_FILE_DESC NVARCHAR(200) NOT NULL,
	DOC_FILE_EXTENSION NVARCHAR(10) NOT NULL,
	DOC_FILE_CONTENT_TYPE NVARCHAR(200) NOT NULL,
	DOC_FILE_DATA VARBINARY(MAX) NOT NULL,
	DATE_UPLOADED AS (CONVERT(NVARCHAR,GETDATE(),107)),
)

GO

---------------------------------------------------------
---------------------------------------------------------
------------------------HR PART 2------------------------

--COMPETENCY MANAGEMENT
CREATE TABLE [dbo].[tbl_competency](
	[competency_id] [int] IDENTITY(1,1) NOT NULL,
	[competency_name] [nvarchar](70) NULL,
	[competency_cluster_id] [int] NULL,
	[competency_type] [nvarchar](50) NULL,
 CONSTRAINT [pk_competency_id] PRIMARY KEY CLUSTERED 
(
	[competency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_competency_cluster]    Script Date: 3/25/2018 12:07:11 AM ******/

CREATE TABLE [dbo].[tbl_competency_cluster](
	[competency_cluster_id] [int] IDENTITY(1,1) NOT NULL,
	[competency_cluster_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_competency_cluster_id] PRIMARY KEY CLUSTERED 
(
	[competency_cluster_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_competency_status]    Script Date: 3/25/2018 12:07:11 AM ******/

CREATE TABLE [dbo].[tbl_competency_status](
	[competency_status_id] [int] IDENTITY(1,1) NOT NULL,
	[competency_status_emp_id] [int] NOT NULL,
	[competency_status_competency_id] [int] NOT NULL,
	[competency_status_time_stamp] [datetime] NOT NULL CONSTRAINT [def_competency_status_time_stamp]  DEFAULT (getdate()),
	[competency_status_competency_score] [nvarchar](50) NULL DEFAULT ('Basic'),
 CONSTRAINT [pk_stat_id] PRIMARY KEY CLUSTERED 
(
	[competency_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_departments]    Script Date: 3/25/2018 12:07:11 AM ******/

GO
CREATE TABLE [dbo].[tbl_departments](
	[dept_id] [int] IDENTITY(1,1) NOT NULL,
	[dept_name] [nvarchar](30) NOT NULL,
	[dept_manager_id] [int] NOT NULL,
 CONSTRAINT [pk_dept_id] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_employees]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employees](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_first_name] [nvarchar](50) NULL,
	[emp_last_name] [nvarchar](50) NULL,
	[emp_email] [nvarchar](50) NULL,
	[emp_contact_no] [numeric](20, 0) NULL,
	[emp_manager_id] [int] NULL,
	[emp_job_id] [int] NULL,
 CONSTRAINT [pk_emp_id] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ui_emp_email] UNIQUE NONCLUSTERED 
(
	[emp_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_job]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_job](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_title] [nvarchar](35) NOT NULL,
	[job_dept_id] [int] NULL,
 CONSTRAINT [pk_job_id] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_job_competency]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_job_competency](
	[job_competency_id] [int] IDENTITY(1,1) NOT NULL,
	[job_competency_job_id] [int] NOT NULL,
	[job_competency_competency_id] [int] NOT NULL,
	[job_competency_competency_level] [nvarchar](20) NULL CONSTRAINT [def_job_competency_competency_level]  DEFAULT ('Basic'),
 CONSTRAINT [pk_job_competency_id] PRIMARY KEY CLUSTERED 
(
	[job_competency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_job_history]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_job_history](
	[hist_emp_id] [int] NOT NULL,
	[hist_start_date] [date] NOT NULL,
	[hist_end_date] [date] NULL,
	[hist_job_id] [int] NOT NULL,
 CONSTRAINT [pk_jhist_emp_id_st_date] PRIMARY KEY CLUSTERED 
(
	[hist_emp_id] ASC,
	[hist_start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_training]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_training](
	[training_id] [int] IDENTITY(1,1) NOT NULL,
	[training_name] [nvarchar](100) NOT NULL,
	[training_desc] [nvarchar](300) NULL,
	[training_date_from] [datetime] NULL,
	[training_date_to] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_training_competency]    Script Date: 3/25/2018 12:07:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_training_competency](
	[training_competency_id] [int] IDENTITY(1,1) NOT NULL,
	[training_competency_training_id] [int] NOT NULL,
	[training_competency_competency_id] [int] NOT NULL,
	[training_competency_competency_level] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[training_competency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tbl_job_history] ADD  CONSTRAINT [def_hist_start_date]  DEFAULT (getdate()) FOR [hist_start_date]
GO
ALTER TABLE [dbo].[tbl_training_competency] ADD  CONSTRAINT [def_training_competency_competency_level]  DEFAULT ('Basic') FOR [training_competency_competency_level]
GO
ALTER TABLE [dbo].[tbl_competency]  WITH CHECK ADD  CONSTRAINT [fk_competency_cluster_id] FOREIGN KEY([competency_cluster_id])
REFERENCES [dbo].[tbl_competency_cluster] ([competency_cluster_id])
GO
ALTER TABLE [dbo].[tbl_competency] CHECK CONSTRAINT [fk_competency_cluster_id]
GO
ALTER TABLE [dbo].[tbl_competency_status]  WITH CHECK ADD  CONSTRAINT [fk_stat_competency_id] FOREIGN KEY([competency_status_competency_id])
REFERENCES [dbo].[tbl_competency] ([competency_id])
GO
ALTER TABLE [dbo].[tbl_competency_status] CHECK CONSTRAINT [fk_stat_competency_id]
GO
ALTER TABLE [dbo].[tbl_competency_status]  WITH CHECK ADD  CONSTRAINT [fk_stat_emp_id] FOREIGN KEY([competency_status_emp_id])
REFERENCES [dbo].[tbl_employees] ([emp_id])
GO
ALTER TABLE [dbo].[tbl_competency_status] CHECK CONSTRAINT [fk_stat_emp_id]
GO
ALTER TABLE [dbo].[tbl_departments]  WITH CHECK ADD  CONSTRAINT [fk_dept_mgr_id] FOREIGN KEY([dept_manager_id])
REFERENCES [dbo].[tbl_employees] ([emp_id])
GO
ALTER TABLE [dbo].[tbl_departments] CHECK CONSTRAINT [fk_dept_mgr_id]
GO
ALTER TABLE [dbo].[tbl_employees]  WITH CHECK ADD  CONSTRAINT [fk_emp_job_id] FOREIGN KEY([emp_job_id])
REFERENCES [dbo].[tbl_job] ([job_id])
GO
ALTER TABLE [dbo].[tbl_employees] CHECK CONSTRAINT [fk_emp_job_id]
GO
ALTER TABLE [dbo].[tbl_employees]  WITH CHECK ADD  CONSTRAINT [fk_emp_manager_id] FOREIGN KEY([emp_manager_id])
REFERENCES [dbo].[tbl_employees] ([emp_id])
GO
ALTER TABLE [dbo].[tbl_employees] CHECK CONSTRAINT [fk_emp_manager_id]
GO
ALTER TABLE [dbo].[tbl_job]  WITH CHECK ADD  CONSTRAINT [fk_job_dept_id] FOREIGN KEY([job_dept_id])
REFERENCES [dbo].[tbl_departments] ([dept_id])
GO
ALTER TABLE [dbo].[tbl_job] CHECK CONSTRAINT [fk_job_dept_id]
GO
ALTER TABLE [dbo].[tbl_job_competency]  WITH CHECK ADD  CONSTRAINT [fk_job_competency_competency_id] FOREIGN KEY([job_competency_competency_id])
REFERENCES [dbo].[tbl_competency] ([competency_id])
GO
ALTER TABLE [dbo].[tbl_job_competency] CHECK CONSTRAINT [fk_job_competency_competency_id]
GO
ALTER TABLE [dbo].[tbl_job_competency]  WITH CHECK ADD  CONSTRAINT [fk_job_competency_job_id] FOREIGN KEY([job_competency_job_id])
REFERENCES [dbo].[tbl_job] ([job_id])
GO
ALTER TABLE [dbo].[tbl_job_competency] CHECK CONSTRAINT [fk_job_competency_job_id]
GO
ALTER TABLE [dbo].[tbl_job_history]  WITH CHECK ADD  CONSTRAINT [fk_jhist_emp] FOREIGN KEY([hist_emp_id])
REFERENCES [dbo].[tbl_employees] ([emp_id])
GO
ALTER TABLE [dbo].[tbl_job_history] CHECK CONSTRAINT [fk_jhist_emp]
GO
ALTER TABLE [dbo].[tbl_job_history]  WITH CHECK ADD  CONSTRAINT [fk_jhist_job] FOREIGN KEY([hist_job_id])
REFERENCES [dbo].[tbl_job] ([job_id])
GO
ALTER TABLE [dbo].[tbl_job_history] CHECK CONSTRAINT [fk_jhist_job]
GO
ALTER TABLE [dbo].[tbl_training_competency]  WITH CHECK ADD  CONSTRAINT [fk_training_competency_competency_id] FOREIGN KEY([training_competency_competency_id])
REFERENCES [dbo].[tbl_competency] ([competency_id])
GO
ALTER TABLE [dbo].[tbl_training_competency] CHECK CONSTRAINT [fk_training_competency_competency_id]
GO
ALTER TABLE [dbo].[tbl_training_competency]  WITH CHECK ADD  CONSTRAINT [fk_training_competency_training_id] FOREIGN KEY([training_competency_training_id])
REFERENCES [dbo].[tbl_training] ([training_id])
GO
ALTER TABLE [dbo].[tbl_training_competency] CHECK CONSTRAINT [fk_training_competency_training_id]
GO
ALTER TABLE [dbo].[tbl_competency]  WITH NOCHECK ADD  CONSTRAINT [ck_competency_cluster_id] CHECK  ((case when [competency_cluster_id] IS NULL then (0) else (1) end=(1)))
GO
ALTER TABLE [dbo].[tbl_competency] CHECK CONSTRAINT [ck_competency_cluster_id]
GO
ALTER TABLE [dbo].[tbl_job_history]  WITH CHECK ADD  CONSTRAINT [chk_jhist_date_interval] CHECK  (([hist_end_date]>[hist_start_date]))
GO
ALTER TABLE [dbo].[tbl_job_history] CHECK CONSTRAINT [chk_jhist_date_interval]
GO
USE [master]
GO
ALTER DATABASE [competencymanagement_db] SET  READ_WRITE 
GO

--LEARNING MANAGEMENT
CREATE TABLE [dbo].[TBL_COURSE](
	[COURSE_ID] [int] IDENTITY(1,1) NOT NULL,
	[COURSE_NAME] [nvarchar](500) NOT NULL,
	[COURSE_DESCRIPTION] [nvarchar](500) NOT NULL,
	[COURSE_LEARNINGFILE] [varbinary](max) NULL,
	[COURSE_CATEGORY_ID] [int] NULL,
	[COURSE_OUTCOME] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_COURSES] PRIMARY KEY CLUSTERED 
(
	[COURSE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_COURSE_CATEGORY]    Script Date: 03/19/18 1:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_COURSE_CATEGORY](
	[COURSE_CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[COURSE_CATEGORY_NAME] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_COURSE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[COURSE_CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_EMPLOYEE]    Script Date: 03/19/18 1:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_EMPLOYEE](
	[EMP_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_FNAME] [nvarchar](500) NOT NULL,
	[EMP_MNAME] [nvarchar](500) NOT NULL,
	[EMP_LNAME] [nvarchar](500) NOT NULL,
	[EMP_AGE] [numeric](18, 0) NOT NULL,
	[EMP_CONTACTNUMBER] [nvarchar](500) NULL,
	[EMP_ADDRESS] [nvarchar](500) NOT NULL,
	[EMP_EMAIL_ADDRESS] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_EMPID] PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT]    Script Date: 03/19/18 1:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT](
	[EMP_C_E_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_C_E_DATEOFENROLMENT] [datetime] NOT NULL,
	[EMP_C_E_DATEOFCOMPLETION] [datetime] NOT NULL,
	[EMP_C_E_COURSECOMPLETED] [numeric](18, 0) NOT NULL,
	[EMP_ID] [int] NULL,
	[COURSE_ID] [int] NULL,
 CONSTRAINT [PK_EMPLOYEECOURSEENROLMENT] PRIMARY KEY CLUSTERED 
(
	[EMP_C_E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_LOG]    Script Date: 03/19/18 1:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_LOG](
	[LOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[USERS_ID] [int] NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_USERS]    Script Date: 03/19/18 1:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERS](
	[USERS_ID] [int] IDENTITY(1,1) NOT NULL,
	[USERS_USERNAME] [nvarchar](500) NOT NULL,
	[USERS_PASSWORD] [nvarchar](500) NOT NULL,
	[EMP_ID] [int] NULL,
 CONSTRAINT [PK_USERSID] PRIMARY KEY CLUSTERED 
(
	[USERS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TBL_COURSE]  WITH CHECK ADD  CONSTRAINT [FK_TBL_COURSE_COURSE_CATEGORY_ID] FOREIGN KEY([COURSE_CATEGORY_ID])
REFERENCES [dbo].[TBL_COURSE_CATEGORY] ([COURSE_CATEGORY_ID])
GO
ALTER TABLE [dbo].[TBL_COURSE] CHECK CONSTRAINT [FK_TBL_COURSE_COURSE_CATEGORY_ID]
GO
ALTER TABLE [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT]  WITH CHECK ADD  CONSTRAINT [FK_TBL_EMPLOYEE_COURSE_ENROLMENT_EMP_ID] FOREIGN KEY([EMP_ID])
REFERENCES [dbo].[TBL_EMPLOYEE] ([EMP_ID])
GO
ALTER TABLE [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT] CHECK CONSTRAINT [FK_TBL_EMPLOYEE_COURSE_ENROLMENT_EMP_ID]
GO
ALTER TABLE [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT]  WITH CHECK ADD  CONSTRAINT [FK1_TBL_EMPLOYEE_COURSE_ENROLMENT_COURSES_ID] FOREIGN KEY([COURSE_ID])
REFERENCES [dbo].[TBL_COURSE] ([COURSE_ID])
GO
ALTER TABLE [dbo].[TBL_EMPLOYEE_COURSE_ENROLMENT] CHECK CONSTRAINT [FK1_TBL_EMPLOYEE_COURSE_ENROLMENT_COURSES_ID]
GO
ALTER TABLE [dbo].[TBL_LOG]  WITH CHECK ADD  CONSTRAINT [FK_TBL_LOG_USERS_ID] FOREIGN KEY([USERS_ID])
REFERENCES [dbo].[TBL_USERS] ([USERS_ID])
GO
ALTER TABLE [dbo].[TBL_LOG] CHECK CONSTRAINT [FK_TBL_LOG_USERS_ID]
GO
ALTER TABLE [dbo].[TBL_USERS]  WITH CHECK ADD  CONSTRAINT [FK_TBL_USERS_EMP_ID] FOREIGN KEY([EMP_ID])
REFERENCES [dbo].[TBL_EMPLOYEE] ([EMP_ID])
GO
ALTER TABLE [dbo].[TBL_USERS] CHECK CONSTRAINT [FK_TBL_USERS_EMP_ID]
GO

--TRAINING MANAGEMENT
Create Table Training_Course
(
	Course_Id Numeric Identity(1,1) Not Null
		Constraint Pk_Course Primary Key,
	Trainer_Id Numeric Null Foreign Key
		References Training_COurse(Course_Id),

	Course_Title 			Varchar(50) 	Not Null,
	Course_Description 		Varchar(500) 	Not Null,
	Course_Type 			Varchar(10) 	Not Null,
	Course_Startdate 		Date,
	Course_Enddate 			Date 		Not Null,
	Course_Training_Hours 		Time,	
	Course_Training_Facility	Varchar(500)	Not Null,
	Course_Location 		Varchar(100) 	Not Null,
	Course_Topic			Varchar(50)	Not Null,
)

GO

Create Table Trainees
(
Trainees_Id Numeric Identity(1,1) Not Null
	Constraint Pk_Trainees Primary Key,
Trainees_Name 		Varchar(50) Not Null,
Trainees_Address 	Varchar(100) Not Null,
Trainess_Age 		Numeric Not Null,
Trainees_Birthdate 	Date,
Trainees_Gender 	Varchar(10) Not Null,
Trainees_JOb 		Varchar(50)

)

GO

Create Table Trainer
(
Trainer_Id Numeric Identity(1,1) Not Null
	Constraint Pk_Trainer Primary Key,
	
Trainer_Name 		Varchar(100)	Not Null,
Trainer_Address 	Varchar(100) 	Not Null,
Trainer_Birthdate	Date,
Trainer_Age		Numeric,
Trainer_Contact		Varchar(100)	Not Null,
Trainer_Gender		Varchar(10)	Not Null,
Trainer_Job		Varchar(50)	Not Null,
)

GO

Create Table Request
(
Request_Id Numeric Identity(1,1) Not Null
	Constraint Pk_Request Primary Key,
	Course_Id Numeric Null Foreign Key
		References Training_Course(Course_Id),
	Trainees_Id Numeric Null Foreign Key
		References Trainees(Trainees_Id),
Reason 			Varchar(100) 	Not Null,
Status 			Varchar(10) 	Not Null,
)

GO

---------------------------------------------------------
---------------------------------------------------------
------------------------HR PART 3------------------------
--HUMAN RESOURCE PART 3
--LEAVE MANAGEMENT
CREATE TABLE [dbo].[tbl_emp_leave](
	[emp_lve_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_id] [int] NULL,
	[lve_id] [int] NULL,
	[lve_bal] [numeric](5, 0) NULL,
 CONSTRAINT [PK_emp_lve] PRIMARY KEY CLUSTERED 
(
	[emp_lve_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tbl_leave](
	[lve_id] [int] IDENTITY(1,1) NOT NULL,
	[lve_name] [nvarchar](50) NULL,
	[lve_code] [nvarchar](10) NULL,
	[lve_type] [nvarchar](20) NULL,
	[lve_info_id] [int] NULL,
	[lve_role] [nvarchar](50) NULL,
	[lve_location] [nvarchar](50) NULL,
	[lve_gender] [nvarchar](6) NULL,
	[lve_marital] [nvarchar](10) NULL,
	[lve_period] [nvarchar](10) NULL,
	[accrue_date] [nvarchar](50) NULL,
	[lve_count] [numeric](4, 0) NULL,
	[isAccrualReset] [bit] NULL,
	[apply_before] [numeric](3, 0) NULL,
	[maxConsecutive] [numeric](4, 0) NULL,
	[isConsiderDate] [bit] NULL,
	[new_probation_period] [nvarchar](20) NULL,
	[new_waiting_period] [numeric](3, 0) NULL,
	[new_initial_value] [numeric](3, 0) NULL,
	[isAdminAssign] [bit] NULL,
	[isBeyondLimit] [bit] NULL,
	[isCarryForward] [bit] NULL,
	[cf_max] [numeric](3, 0) NULL,
	[cf_lifetime] [numeric](3, 0) NULL,
	[isCarryExceed] [bit] NULL,
 CONSTRAINT [PK_leave] PRIMARY KEY CLUSTERED 
(
	[lve_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tbl_leave_req](
	[lve_req_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_id] [int] NOT NULL,
	[lve_type] [int] NULL,
	[lve_start_date] [nvarchar](20) NULL,
	[lve_end_date] [nvarchar](20) NULL,
	[lve_no_of_days] [numeric](2, 0) NULL,
	[lve_reason] [nvarchar](200) NULL,
	[lve_remarks] [nvarchar](300) NULL,
	[lve_status] [nvarchar](15) NULL,
	[lve_file_date] [nvarchar](50) NULL,
 CONSTRAINT [PK_lve_req] PRIMARY KEY CLUSTERED 
(
	[lve_req_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tbl_leave_req]  WITH CHECK ADD  CONSTRAINT [FK_emp_leave] FOREIGN KEY([emp_id])
REFERENCES [dbo].[tbl_employee] ([emp_id])
GO
ALTER TABLE [dbo].[tbl_leave_req] CHECK CONSTRAINT [FK_emp_leave]
GO
ALTER TABLE [dbo].[tbl_leave_req]  WITH CHECK ADD  CONSTRAINT [FK_leave_type] FOREIGN KEY([lve_type])
REFERENCES [dbo].[tbl_leave] ([lve_id])
GO
ALTER TABLE [dbo].[tbl_leave_req] CHECK CONSTRAINT [FK_leave_type]
GO


--TIME AND ATTENDANCE
create table tbl_time_attendance
(
	td_id int identity(1,1) primary key not null,
	td_entry_date Date null,
	td_time_in time null,
	td_time_out time null,
	emp_id int not null constraint FK_EMPA FOREIGN KEY references tbl_Employee(emp_id),
	td_Remarks Varchar(MAX) null
)

GO

--SHIFT AND SCHEDULING
create table tbl_schedule( 
  sched_id int identity(1,1) primary key
 ,start_date datetime not null
 ,end_date datetime null
 ,sched_remarks varchar(max) null

)

GO 

create table ref_sched_days(
schedule_id int foreign key references tbl_schedule(sched_id)
, sched_days varchar
)

GO

create table tbl_shift(
shift_id int identity(1,1) primary key
, shift_type nvarchar(20) not null
, grace_period time null 
, start_time time not null
, end_time time not null
, shift_remarks varchar(max) null
, schedule_id int foreign key references tbl_schedule(sched_id)
)

GO

create table ref_scheduling(
emp_id int foreign key references tbl_employee(emp_id)
, job_id int foreign key references tbl_job(job_id)
, shift_id int foreign key references tbl_shift(shift_id)
, schedule_id int foreign key references tbl_schedule(sched_id)
)


GO

create table shift_sched_files(
ssfile_id int identity(1,1) primary key
, filename nvarchar(100)
, filetype nvarchar(100)
, document_file varbinary(max)
, file_description varchar(max) null
, schedule_id int foreign key references tbl_schedule(sched_id)
)

GO 

create table overtime (
overtime_id int identity(1,1) primary key
, overtime_reason varbinary(max) null
, overtime_status varchar default ('pending')
, schedule_id int foreign key references tbl_schedule(sched_id)
, constraint chk_ot check(overtime_status in('approved', 'not approved', 'cancelled', 'pending'))
)


--CLAIMS AND REIMBURSEMENTS
GO

CREATE TABLE tbl_reimb
(
	reimb_id INT NOT NULL,
	reimb_purpose NVARCHAR NOT NULL,
	reimb_duration NVARCHAR NOT NULL,
	CONSTRAINT pk_reimb PRIMARY KEY (reimb_id)
)

GO

CREATE TABLE tbl_reimb_req
(
	reimb_req_id INT NOT NULL,
	reimb_dtreq DATE NOT NULL,
	CONSTRAINT pk_reimb_req PRIMARY KEY (reimb_req_id)
)

GO

CREATE TABLE tbl_expense
(
	exp_id INT NOT NULL,
	exp_dtpurchase DATE NOT NULL,
	exp_desc NVARCHAR NOT NULL,
	exp_purpose NVARCHAR NOT NULL,
	exp_uprice INT NOT NULL,
	exp_qty INT NOT NULL,
	reimb_req_id INT NOT NULL,
	CONSTRAINT pk_exp PRIMARY KEY (exp_id),
	CONSTRAINT fk_exp_reimb FOREIGN KEY (reimb_req_id)
		REFERENCES tbl_reimb_req(reimb_req_id)
);


--TIMESHEET MANAGEMENT
GO

CREATE TABLE tbl_timesheet
	(
	 t_id NUMERIC identity(1,1) NOT NULL 
	 CONSTRAINT pk_t PRIMARY KEY(t_id),
	 temployee_id int
	 CONSTRAINT fk_temp FOREIGN KEY(temployee_id)
	 REFERENCES tbl_employee(emp_id),
	 timesheet_status varchar(100) default 'Unsubmitted',
	 approver varchar(100) default 'none',
	 date_approve date default '00-00-0000',
	 date_submission date default '00-00-0000',
	 tregular_hours float default 00.00,
	 tovertime_hours float default 00.00, 
	 tundertime_hours float default 00.00, 
	 tlate_hours float default 00.00,
	 total_hours float default 00.00, 
	 timesheet_type varchar(100) default 'none',
	 forthemonthof varchar(100) default 'none' ,
	 yearoftimesheet int default 0000,
	 weekstart datetime,
	 weekend datetime
	)

GO

---------------------------------------------------------
---------------------------------------------------------
----------------------HR PART 4-------------------------
CREATE TABLE TBL_DED_TRANSACT
( DED_TRANS_ID INT IDENTITY(1,1) NOT NULL,
  DED_TRANS_DESC VARCHAR(100) NOT NULL,
  DED_AMOUNT FLOAT NOT NULL,

  CONSTRAINT PK_TBL_DED_TRANSACT1 PRIMARY KEY(DED_TRANS_ID),
)
GO

CREATE TABLE TBL_GSIS
(
  GSIS_ID INT IDENTITY(1,1) NOT NULL,
  GSIS_EMPLOYEE_SHARE FLOAT NOT NULL,
  GSIS_EMPLOYER_SHARE FLOAT NOT NULL

  PRIMARY KEY(GSIS_ID)
)
GO


CREATE TABLE TBL_PAGIBIG
( PGIBG_ID INT IDENTITY(1,1) NOT NULL,
  SALARY_BASE_BELOW FLOAT NOT NULL,
  BELOW_EMPLOYEE_SHARE FLOAT NOT NULL,
  BELOW_EMPLOYER_SHARE FLOAT NOT NULL,
  SALARY_BASE_ABOVE FLOAT NOT NULL,
  ABOVE_EMPLOYEE_SHARE FLOAT NOT NULL,
  ABOVE_EMPLOYER_SHARE FLOAT NOT NULL

  CONSTRAINT PK_TBL_PAGIBIG PRIMARY KEY(PGIBG_ID)
)
GO
CREATE TABLE TBL_PHILHEALTH
( PHIL_ID INT IDENTITY(1,1) NOT NULL,
  PHIL_BRACKET INT NOT NULL,
  PHIL_RANGE_FROM FLOAT NOT NULL,
  PHIL_RANGE_TO FLOAT NOT NULL,
  PHIL_EE FLOAT NOT NULL,
  PHIL_ER FLOAT NOT NULL

  CONSTRAINT PK_TBL_PHILHEALTH PRIMARY KEY(PHIL_ID)
)
GO
CREATE TABLE TBL_WITHHELD
( WTAX_ID INT IDENTITY(1,1) NOT NULL,
  EMP_ID INT NOT NULL,
  COMP_FR FLOAT NOT NULL,
  COMP_TO FLOAT NOT NULL,
  TAX_DEP FLOAT NOT NULL,
  TAX_OVER FLOAT NOT NULL,
  TAX_EXEMP FLOAT NOT NULL,

  CONSTRAINT PK_TBL_WITHHELD PRIMARY KEY(WTAX_ID),
  CONSTRAINT FK_TBL_WITHHELD1 FOREIGN KEY(EMP_ID)
  REFERENCES TBL_EMPLOYEE(EMP_ID)
)
GO
CREATE TABLE TBL_OTHER
( OTHER_ID INT IDENTITY(1,1) NOT NULL,
  OTHER_DESC VARCHAR(100) NOT NULL,
  AMOUNT FLOAT NOT NULL,
  EMP_ID INT NOT NULL,

  CONSTRAINT PK_TBL_OTHER1 PRIMARY KEY(OTHER_ID),
   CONSTRAINT FK_TBL_OTHER FOREIGN KEY(EMP_ID)
  REFERENCES TBL_EMPLOYEE(EMP_ID)
)
GO

CREATE TABLE TBL_DEDUCTION
( DEDUCTION_ID INT IDENTITY(1,1) NOT NULL,
  EMP_ID INT NOT NULL,
  DED_TRANS_ID INT NOT NULL,
  PERIOD_START DATE NOT NULL,
  PERIOD_END DATE NOT NULL,
  GSIS_ID INT NOT NULL,
  PGIBG_ID INT NOT NULL,
  PHIL_ID INT NOT NULL,
  WTAX_ID INT NOT NULL,
  OTHER_ID INT NOT NULL,
  GROSS_DED FLOAT NOT NULL,

  PRIMARY KEY(DEDUCTION_ID),
  FOREIGN KEY(EMP_ID)
  REFERENCES TBL_EMPLOYEE(EMP_ID),
  FOREIGN KEY(GSIS_ID)
  REFERENCES TBL_GSIS(GSIS_ID),
  FOREIGN KEY(PGIBG_ID)
  REFERENCES TBL_PAGIBIG(PGIBG_ID),
  FOREIGN KEY(PHIL_ID)
  REFERENCES TBL_PHILHEALTH(PHIL_ID),
  FOREIGN KEY(WTAX_ID)
  REFERENCES TBL_WITHHELD(WTAX_ID),
  FOREIGN KEY(OTHER_ID)
  REFERENCES TBL_OTHER(OTHER_ID),
  FOREIGN KEY(DED_TRANS_ID)
  REFERENCES TBL_DED_TRANSACT(DED_TRANS_ID),
)

GO


CREATE TABLE TBL_T_PAYROLL
( 
  PAYROLL_ID INT IDENTITY(1,1) NOT NULL,
  EMP_ID INT NOT NULL,
  PR_START DATE NOT NULL,
  PR_END DATE NOT NULL,
  PAY_GRADE_ID INT NOT NULL,
  ALLOWANCE_ID INT NOT NULL,
  DEDUCTION_ID INT NOT NULL,
  GROSS_PAY FLOAT NOT NULL,
  NET_PAY FLOAT NOT NULL,

  PRIMARY KEY(PAYROLL_ID),
  FOREIGN KEY(DEDUCTION_ID)
  REFERENCES TBL_DEDUCTION(DEDUCTION_ID),
  FOREIGN KEY(EMP_ID)
  REFERENCES TBL_EMPLOYEE(EMP_ID),
  FOREIGN KEY(PAY_GRADE_ID)
  REFERENCES TBL_PAY_GRADE(PAY_GRADE_ID),
  )










--DROP TABLE TBL_DEPARTMENT

--DROP TABLE REF_EMPLOYEE_JOB

--DROP TABLE TBL_PAY_GRADE

--DROP TABLE TBL_SALARY_TYPE

--DROP TABLE TBL_EMPLOYEE

--DROP TABLE TBL_EMPLOYEE

--DROP TABLE TBL_EMPLOYEE

--DROP TABLE TBL_JOB

--DROP TABLE TBL_APPLICANT

--DROP TABLE TBL_APPLICANT_INFO

--DROP TABLE TBL_REQUIREMENT

--DROP TABLE TBL_REQUIREMENT_SET

--DROP TABLE TBL_REQUIREMENT_SET

--DROP TABLE REF_REQUIREMENT_SET

--DROP TABLE TBL_JOB_POST

--DROP TABLE REF_REQUIREMENT_SET

--DROP TABLE REF_DEPARTMENT_EMPLOYEE

--DROP TABLE REF_DEPARTMENT_MANAGER

--DROP TABLE TBL_EXAMINATION

--DROP TABLE TBL_APPLICANT_EVALUATION

--DROP TABLE TBL_INTERVIEW

--DROP TABLE REF_EMPLOYEE_EXAMINATION

--DROP TABLE TBL_PERFORMANCE_EVALUATION