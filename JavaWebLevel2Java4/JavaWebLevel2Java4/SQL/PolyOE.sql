USE master
GO
CREATE DATABASE PolyOE
GO
USE PolyOE
GO
CREATE TABLE Users(
	Id varchar(20) NOT NULL,
	Password varchar(50) NOT NULL,
	Fullname nvarchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	Admin bit NOT NULL,
	CONSTRAINT PK_Username PRIMARY KEY CLUSTERED (Id)
)
GO
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('admin', '123', N'Văn Tèo', 'admin@gmail.com', 1)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('danhloi', '823806', N'Danh Lợi', 'danhloi@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('ducduy', '525090', N'Đức Duy', 'ducduy@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('duyplus', '123456', N'Hoàng Duy', 'duyplusdz@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('honglinh', '268252', N'Hồng Linh', 'honglinh@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('huyphi', '155530', N'Huy Phi', 'huyphi@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('trungkien', '781915', N'Trung Kiên', 'trungkien@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('hongdao', '962334', N'Hồng Đào', 'hongdao@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('lelai', '665844', N'Lê Lại', 'lelai@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('quanghung', '533240', N'Quang Hưng', 'quanghung@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('thanhthuy', '330543', N'Thanh Thuỳ', 'thanhthuy@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('hungthinh', '345983', N'Hưng Thịnh', 'hungthinh@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('daiphat', '301381', N'Đại Phát', 'daiphat@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('myduyen', '543397', N'Mỹ Duyên', 'myduyen@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('binhloi', '399458', N'Bình Lợi', 'binhloi@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('tienthanh', '469164', N'Tiến Thành', 'tienthanh@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('trunghung', '928937', N'Trung Hùng', 'trunghung@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('thuha', '147852', N'Thu Hà', 'thuha@gmail.com', 0)
INSERT INTO Users (Id,Password,Fullname,Email,Admin) VALUES ('hoangkim', '364430', N'Hoàng Kim', 'hoangkim@gmail.com', 0)
