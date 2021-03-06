/****** object:  table [dbo].[auth_log_login]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_log_login](
	[id] [int] not null,
	[useraccount] [varchar](128) null,
	[username] [varchar](128) null,
	[userdistrict] [varchar](128) null,
	[userdepartmentid] [varchar](128) null,
	[userdepartmentname] [varchar](128) null,
	[timestamp] [datetime] null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_user_role]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_user_role](
	[useraccount] [varchar](128) null,
	[userid] [varchar](128) null,
	[roleid] [varchar](128) null,
	[rolename] [varchar](128) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_user]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_user](
	[id] [int] not null,
	[account] [varchar](128) not null,
	[password] [varchar](128) null,
	[name] [varchar](128) null,
	[telephone] [varchar](128) null,
	[sex] [varchar](128) null,
	[province] [varchar](128) null,
	[city] [varchar](128) null,
	[district] [varchar](128) null,
	[departmentid] [varchar](128) null,
	[departmentname] [varchar](128) null,
	[office] [varchar](128) null,
	[rolelevel] [varchar](128) null,
 constraint [pk__auth_use__c41152740ad2a005] primary key clustered 
(
	[account] asc,
	[id] asc
)with (pad_index  = off, statistics_norecompute  = off, ignore_dup_key = off, allow_row_locks  = on, allow_page_locks  = on) on [primary]
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_role_function]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_role_function](
	[roleid] [int] not null,
	[rolename] [varchar](128) null,
	[functionid] [int] null,
	[functionname] [varchar](128) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_role]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_role](
	[roleid] [int] not null,
	[rolename] [varchar](128) null,
	[rolediscription] [varchar](512) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_group_user]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_group_user](
	[groupid] [int] not null,
	[groupname] [varchar](128) null,
	[useraccount] [varchar](128) null,
	[username] [varchar](128) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_group]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_group](
	[groupid] [int] not null,
	[groupname] [varchar](128) null,
	[groupdiscription] [varchar](512) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_function]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_function](
	[functonid] [int] not null,
	[functionname] [varchar](128) null,
	[functiondiscription] [varchar](512) null
) on [primary]
go
set ansi_padding off
go
/****** object:  table [dbo].[auth_department]    script date: 01/06/2016 17:05:33 ******/
set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go
create table [dbo].[auth_department](
	[departmentid] [varchar](128) not null,
	[departmentname] [varchar](128) not null,
	[city] [varchar](128) null,
	[districtname] [varchar](128) null,
	[commentinfo] [varchar](1024) null
) on [primary]
go
set ansi_padding off
go

insert into [dbo].[auth_user]
           ([id]
           ,[account]
           ,[password]
           ,[name]
           ,[telephone]
           ,[sex]
           ,[province]
           ,[city]
           ,[district]
           ,[departmentid]
           ,[departmentname]
           ,[office]
           ,[rolelevel])
     values
           (1
           ,'admin'
           ,'admin'
           ,'系统管理员'
           ,''
           ,'男'
           ,'山东省'
           ,'济南市'
           ,'高新区'
           ,''
           ,''
           ,''
           ,'系统管理员'
           )
go


