/*
 Navicat Premium Data Transfer

 Source Server         : MSSQL
 Source Server Type    : SQL Server
 Source Server Version : 13005026
 Source Host           : localhost:1433
 Source Catalog        : PolyOE
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13005026
 File Encoding         : 65001

 Date: 02/04/2024 15:22:38
*/


-- ----------------------------
-- Table structure for CellPhones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CellPhones]') AND type IN ('U'))
	DROP TABLE [dbo].[CellPhones]
GO

CREATE TABLE [dbo].[CellPhones] (
  [id] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [nameCellPhones] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [price] int NULL
)
GO

ALTER TABLE [dbo].[CellPhones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [CellPhones]
-- ----------------------------
INSERT INTO [dbo].[CellPhones]  VALUES (N'1', N'Phone Model 1', N'500')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'10', N'Phone Model 10', N'1400')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'2', N'Phone Model 2', N'600')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'3', N'Phone Model 3', N'700')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'4', N'Phone Model 4', N'800')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'5', N'Phone Model 5', N'900')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'6', N'Phone Model 6', N'1000')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'7', N'Phone Model 7', N'1100')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'8', N'Phone Model 8', N'1200')
GO

INSERT INTO [dbo].[CellPhones]  VALUES (N'9', N'Phone Model 9', N'1300')
GO


-- ----------------------------
-- Table structure for PhoneOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PhoneOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[PhoneOrder]
GO

CREATE TABLE [dbo].[PhoneOrder] (
  [id] bigint IDENTITY(1,1) NOT NULL,
  [UserID] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [orderDate] date NULL
)
GO

ALTER TABLE [dbo].[PhoneOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PhoneOrderDetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PhoneOrderDetail]') AND type IN ('U'))
	DROP TABLE [dbo].[PhoneOrderDetail]
GO

CREATE TABLE [dbo].[PhoneOrderDetail] (
  [id] bigint IDENTITY(1,1) NOT NULL,
  [PhoneOrderID] bigint NULL,
  [CellPhonesID] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [quantity] int NULL
)
GO

ALTER TABLE [dbo].[PhoneOrderDetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Students
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type IN ('U'))
	DROP TABLE [dbo].[Students]
GO

CREATE TABLE [dbo].[Students] (
  [Id] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [LastName] nvarchar(70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [FirstName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Birthday] date NULL
)
GO

ALTER TABLE [dbo].[Students] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Students]
-- ----------------------------
INSERT INTO [dbo].[Students]  VALUES (N'AA01638', N'LỮ HUY', N'CƯỜNG', N'1991-05-08')
GO

INSERT INTO [dbo].[Students]  VALUES (N'AA02037', N'ĐỖ VĂN', N'MINH', N'1992-10-24')
GO

INSERT INTO [dbo].[Students]  VALUES (N'AA02771', N'NGUYỄN TẤN', N'HIẾU', N'1998-09-15')
GO

INSERT INTO [dbo].[Students]  VALUES (N'AA02867', N'NGUYỄN HỮU', N'NAME', N'1997-10-27')
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname NOT NULL,
  [principal_id] int NOT NULL,
  [diagram_id] int IDENTITY(1,1) NOT NULL,
  [version] int NULL,
  [definition] varbinary(max) NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Users]
GO

CREATE TABLE [dbo].[Users] (
  [Id] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Password] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Fullname] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Admin] bit NOT NULL
)
GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [Users]
-- ----------------------------
INSERT INTO [dbo].[Users]  VALUES (N'binh', N'123abc', N'Đậu Văn Bình', N'binh@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'binhnq', N'123abc', N'Nguyễn Quốc Bình', N'binhnq@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'java4', N'123abc', N'Java 4', N'java4@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'javasession6', N'123456', N'Ha Thanh Liem', N'javasession5@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'kien', N'123abc', N'Nguyễn Văn Kiên', N'kien@fpt.edu.vn', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'kiennt', N'123abc', N'Nguyễn Trung Kiên', N'kiennt@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'lelai', N'665844', N'Lê Lại ABC', N'lelai@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'liemha', N'123abc', N'Liem Ha', N'liemht6@fe.edu.vn', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'liemht', N'123456', N'Ha Thanh Liem', N'liemht@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'myduyen', N'543397', N'Mỹ Duyên', N'myduyen@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'nguyenan', N'123abc', N'Nguyen An', N'an@fe.edu.vn', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'quanghung', N'533240', N'Quang Hưng', N'quanghung@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'thanhthuy', N'330543', N'Thanh Thuỳ', N'thanhthuy@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'thuha', N'147852', N'Thu Hà', N'thuha@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'tienthanh', N'469164', N'Tiến Thành', N'tienthanh@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'trunghung', N'928937', N'Trung Hùng', N'trunghung@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'trungkien', N'781915', N'Trung Kiên', N'trungkien@gmail.com', N'0')
GO

INSERT INTO [dbo].[Users]  VALUES (N'tula', N'123abc', N'Lê Anh Tú', N'tula@fe.edu.vn', N'0')
GO


-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table CellPhones
-- ----------------------------
ALTER TABLE [dbo].[CellPhones] ADD CONSTRAINT [PK__CellPhon__3213E83F80E1D3E2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PhoneOrder
-- ----------------------------
ALTER TABLE [dbo].[PhoneOrder] ADD CONSTRAINT [PK__PhoneOrd__3213E83F136D3CCF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PhoneOrderDetail
-- ----------------------------
ALTER TABLE [dbo].[PhoneOrderDetail] ADD CONSTRAINT [PK__PhoneOrd__3213E83FB2298683] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Students
-- ----------------------------
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B6129BAEB61] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Username] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table PhoneOrder
-- ----------------------------
ALTER TABLE [dbo].[PhoneOrder] ADD CONSTRAINT [FK_PhoneOrder_UserID] FOREIGN KEY ([UserID]) REFERENCES [Users] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PhoneOrder] ADD CONSTRAINT [FK_PhoneOrder_UserID1] FOREIGN KEY ([UserID]) REFERENCES [Users] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PhoneOrderDetail
-- ----------------------------
ALTER TABLE [dbo].[PhoneOrderDetail] ADD CONSTRAINT [FK_PhoneOrderDetail_PhoneOrderID] FOREIGN KEY ([PhoneOrderID]) REFERENCES [PhoneOrder] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PhoneOrderDetail] ADD CONSTRAINT [FK_PhoneOrderDetail_CellPhonesID] FOREIGN KEY ([CellPhonesID]) REFERENCES [CellPhones] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

