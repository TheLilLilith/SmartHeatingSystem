GO
use SmartHeatingSystem
GO
create table ������������
(
Id_������������ INT PRIMARY KEY NOT NULL IDENTITY,
����� nvarchar(50) not null,
������ nvarchar(50) not null,
��� nvarchar(50) not null,
���� nvarchar(50) not null
);

GO

create table ���������
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
��� nvarchar(50) not null
);

GO

INSERT INTO ��������� VALUES
('������� ���������'),
('������������� ���������'),
('��������� ���������'),
('������ ���������');

GO

create table ����������
(
Id_���������� INT PRIMARY KEY NOT NULL IDENTITY,
������������������ nvarchar(50) not null,
������������ INT foreign key references ���������(ID),
������ nvarchar(50) not null,
����������� INT not null,
�������������� INT not null,
������������������� INT not null 
);

GO
create table ���������
(
Id_��������� INT PRIMARY KEY NOT NULL IDENTITY,
����������������� nvarchar(50) not null,
);

GO
create table �������������������
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
���������� INT foreign key references ����������(Id_����������),
Id_��������� INT foreign key references ���������(Id_���������),
Id_������������ INT foreign key references ������������(Id_������������)
);
GO
create table ����������
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
���������� INT foreign key references ����������(Id_����������),
��������������� INT,
�������� INT,
����������� INT ,
���� smalldatetime not null
);