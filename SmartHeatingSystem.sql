GO
use SmartHeatingSystem
GO
create table Пользователь
(
Id_Пользователя INT PRIMARY KEY NOT NULL IDENTITY,
Логин nvarchar(50) not null,
Пароль nvarchar(50) not null,
Имя nvarchar(50) not null,
Роль nvarchar(50) not null
);

GO

create table Отопление
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
Вид nvarchar(50) not null
);

GO

INSERT INTO Отопление VALUES
('Водяное отопление'),
('Электрическое отопление'),
('Воздушное отопление'),
('Печное отопление');

GO

create table Устройства
(
Id_Устройства INT PRIMARY KEY NOT NULL IDENTITY,
НазваниеУстройства nvarchar(50) not null,
ВидОтопления INT foreign key references Отопление(ID),
Статус nvarchar(50) not null,
Температура INT not null,
КоличествоВоды INT not null,
КоличествоЭлЭнергии INT not null 
);

GO
create table Помещение
(
Id_Помещения INT PRIMARY KEY NOT NULL IDENTITY,
НазваниеПомещения nvarchar(50) not null,
);

GO
create table УстройстваПомещения
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
Устройство INT foreign key references Устройства(Id_Устройства),
Id_Помещения INT foreign key references Помещение(Id_Помещения),
Id_Пользователя INT foreign key references Пользователь(Id_Пользователя)
);
GO
create table Статистика
(
ID INT PRIMARY KEY NOT NULL IDENTITY,
Устройство INT foreign key references Устройства(Id_Устройства),
СтатТемпературы INT,
СтатВоды INT,
СтатЭнергии INT ,
Дата smalldatetime not null
);