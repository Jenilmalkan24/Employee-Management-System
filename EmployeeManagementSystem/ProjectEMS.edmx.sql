
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2022 22:26:32
-- Generated from EDMX file: C:\Users\jenil.malkan\source\repos\Employee-management-system-using-.Net-MVC--master\EmployeeManagementSystem\ProjectEMS.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EMS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__t_Departm__RefHR__2D27B809]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Departments] DROP CONSTRAINT [FK__t_Departm__RefHR__2D27B809];
GO
IF OBJECT_ID(N'[dbo].[FK__t_Employe__RefHR__38996AB5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Employees] DROP CONSTRAINT [FK__t_Employe__RefHR__38996AB5];
GO
IF OBJECT_ID(N'[dbo].[FK__t_Persona__Emplo__49C3F6B7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_PersonalInformations] DROP CONSTRAINT [FK__t_Persona__Emplo__49C3F6B7];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[holidays]', 'U') IS NOT NULL
    DROP TABLE [dbo].[holidays];
GO
IF OBJECT_ID(N'[dbo].[HR_SignUp]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HR_SignUp];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[t_Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Departments];
GO
IF OBJECT_ID(N'[dbo].[t_Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Employees];
GO
IF OBJECT_ID(N'[dbo].[t_leaves]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_leaves];
GO
IF OBJECT_ID(N'[dbo].[t_payroll]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_payroll];
GO
IF OBJECT_ID(N'[dbo].[t_PersonalInformations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_PersonalInformations];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HR_SignUp'
CREATE TABLE [dbo].[HR_SignUp] (
    [id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(20)  NOT NULL,
    [email] nvarchar(50)  NOT NULL,
    [mobileno] nvarchar(15)  NULL,
    [password] nvarchar(100)  NOT NULL
);
GO

-- Creating table 't_Departments'
CREATE TABLE [dbo].[t_Departments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HOD] nvarchar(20)  NULL,
    [RefHRID] int  NULL,
    [Department] nvarchar(40)  NULL
);
GO

-- Creating table 't_Employees'
CREATE TABLE [dbo].[t_Employees] (
    [Employee_ID] int IDENTITY(1,1) NOT NULL,
    [RefHRID] int  NULL,
    [Firstname] nvarchar(20)  NULL,
    [Lastname] nvarchar(20)  NULL,
    [Username] nvarchar(20)  NOT NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Mobileno] nvarchar(15)  NULL,
    [JoiningDate] datetime  NULL,
    [Department] nvarchar(50)  NULL,
    [Designation] nvarchar(50)  NULL,
    [Password] nvarchar(100)  NOT NULL
);
GO

-- Creating table 't_PersonalInformations'
CREATE TABLE [dbo].[t_PersonalInformations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Employee_ID] int  NOT NULL,
    [PassportNo] nvarchar(20)  NULL,
    [Passport_Exp_Date] datetime  NULL,
    [Tel] nvarchar(15)  NULL,
    [Nationality] nvarchar(20)  NULL,
    [Religion] nvarchar(20)  NULL,
    [Maritalstatus] nvarchar(20)  NULL
);
GO

-- Creating table 'holidays'
CREATE TABLE [dbo].[holidays] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(20)  NOT NULL,
    [Holidaysdate] datetime  NULL,
    [Day] nvarchar(20)  NULL
);
GO

-- Creating table 't_leaves'
CREATE TABLE [dbo].[t_leaves] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Employee_ID] int  NOT NULL,
    [LeaveType] nvarchar(30)  NULL,
    [FromDate] datetime  NULL,
    [ToDate] datetime  NULL,
    [TotalDays] int  NULL,
    [Reason] nvarchar(254)  NULL,
    [Status] nvarchar(20)  NULL,
    [ApprovedBy] nvarchar(20)  NULL
);
GO

-- Creating table 't_payroll'
CREATE TABLE [dbo].[t_payroll] (
    [PaymentId] int IDENTITY(1,1) NOT NULL,
    [Employee_name] nvarchar(30)  NULL,
    [NetSalary] float  NULL,
    [E_Basic] nvarchar(30)  NULL,
    [E_DA] int  NULL,
    [E_HRA] int  NULL,
    [E_Conveyance] int  NULL,
    [Total_Earnings] int  NULL,
    [E_Allowance] int  NULL,
    [D_TDS] int  NULL,
    [D_ESI] int  NULL,
    [D_PF] int  NULL,
    [Tax] int  NULL,
    [Total_Deductions] int  NULL,
    [Employee_Id] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'HR_SignUp'
ALTER TABLE [dbo].[HR_SignUp]
ADD CONSTRAINT [PK_HR_SignUp]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 't_Departments'
ALTER TABLE [dbo].[t_Departments]
ADD CONSTRAINT [PK_t_Departments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Employee_ID] in table 't_Employees'
ALTER TABLE [dbo].[t_Employees]
ADD CONSTRAINT [PK_t_Employees]
    PRIMARY KEY CLUSTERED ([Employee_ID] ASC);
GO

-- Creating primary key on [Id] in table 't_PersonalInformations'
ALTER TABLE [dbo].[t_PersonalInformations]
ADD CONSTRAINT [PK_t_PersonalInformations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'holidays'
ALTER TABLE [dbo].[holidays]
ADD CONSTRAINT [PK_holidays]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 't_leaves'
ALTER TABLE [dbo].[t_leaves]
ADD CONSTRAINT [PK_t_leaves]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [PaymentId] in table 't_payroll'
ALTER TABLE [dbo].[t_payroll]
ADD CONSTRAINT [PK_t_payroll]
    PRIMARY KEY CLUSTERED ([PaymentId] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RefHRID] in table 't_Departments'
ALTER TABLE [dbo].[t_Departments]
ADD CONSTRAINT [FK__t_Departm__RefHR__2D27B809]
    FOREIGN KEY ([RefHRID])
    REFERENCES [dbo].[HR_SignUp]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__t_Departm__RefHR__2D27B809'
CREATE INDEX [IX_FK__t_Departm__RefHR__2D27B809]
ON [dbo].[t_Departments]
    ([RefHRID]);
GO

-- Creating foreign key on [RefHRID] in table 't_Employees'
ALTER TABLE [dbo].[t_Employees]
ADD CONSTRAINT [FK__t_Employe__RefHR__38996AB5]
    FOREIGN KEY ([RefHRID])
    REFERENCES [dbo].[HR_SignUp]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__t_Employe__RefHR__38996AB5'
CREATE INDEX [IX_FK__t_Employe__RefHR__38996AB5]
ON [dbo].[t_Employees]
    ([RefHRID]);
GO

-- Creating foreign key on [Employee_ID] in table 't_PersonalInformations'
ALTER TABLE [dbo].[t_PersonalInformations]
ADD CONSTRAINT [FK__t_Persona__Emplo__49C3F6B7]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[t_Employees]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__t_Persona__Emplo__49C3F6B7'
CREATE INDEX [IX_FK__t_Persona__Emplo__49C3F6B7]
ON [dbo].[t_PersonalInformations]
    ([Employee_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------