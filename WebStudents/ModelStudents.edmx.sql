
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/07/2020 11:45:55
-- Generated from EDMX file: C:\Users\Admin\source\repos\WebStudents\WebStudents\ModelStudents.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WebStudents];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'СтудентSet'
CREATE TABLE [dbo].[СтудентSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ПредметSet'
CREATE TABLE [dbo].[ПредметSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ПредмСтудSet'
CREATE TABLE [dbo].[ПредмСтудSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Студент_Id] int  NOT NULL,
    [Предмет_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'СтудентSet'
ALTER TABLE [dbo].[СтудентSet]
ADD CONSTRAINT [PK_СтудентSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ПредметSet'
ALTER TABLE [dbo].[ПредметSet]
ADD CONSTRAINT [PK_ПредметSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ПредмСтудSet'
ALTER TABLE [dbo].[ПредмСтудSet]
ADD CONSTRAINT [PK_ПредмСтудSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Студент_Id] in table 'ПредмСтудSet'
ALTER TABLE [dbo].[ПредмСтудSet]
ADD CONSTRAINT [FK_СтудентПредмСтуд]
    FOREIGN KEY ([Студент_Id])
    REFERENCES [dbo].[СтудентSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_СтудентПредмСтуд'
CREATE INDEX [IX_FK_СтудентПредмСтуд]
ON [dbo].[ПредмСтудSet]
    ([Студент_Id]);
GO

-- Creating foreign key on [Предмет_Id] in table 'ПредмСтудSet'
ALTER TABLE [dbo].[ПредмСтудSet]
ADD CONSTRAINT [FK_ПредметПредмСтуд]
    FOREIGN KEY ([Предмет_Id])
    REFERENCES [dbo].[ПредметSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ПредметПредмСтуд'
CREATE INDEX [IX_FK_ПредметПредмСтуд]
ON [dbo].[ПредмСтудSet]
    ([Предмет_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------