-- SQL Exam Lab: учебные данные для SQLite
PRAGMA foreign_keys=ON;
CREATE TABLE Company(id INTEGER PRIMARY KEY,name TEXT NOT NULL);
CREATE TABLE Trip(id INTEGER PRIMARY KEY,company INTEGER,plane TEXT,town_from TEXT,town_to TEXT,time_out TEXT,time_in TEXT);
CREATE TABLE Passenger(id INTEGER PRIMARY KEY,name TEXT NOT NULL);
CREATE TABLE Pass_in_trip(trip INTEGER,passenger INTEGER,date TEXT,place TEXT);
CREATE TABLE Class(id INTEGER PRIMARY KEY,name TEXT,school INTEGER,student_count INTEGER);
CREATE TABLE Student(id INTEGER PRIMARY KEY,birthday TEXT,name TEXT);
CREATE TABLE Student_in_class(student INTEGER,class INTEGER);
CREATE TABLE Teacher(id INTEGER PRIMARY KEY,last_name TEXT,first_name TEXT);
CREATE TABLE Subject(id INTEGER PRIMARY KEY,name TEXT);
CREATE TABLE Schedule(id INTEGER PRIMARY KEY,date TEXT,classroom TEXT,teacher INTEGER,subject INTEGER,student INTEGER,class INTEGER,number_pair INTEGER);
CREATE TABLE Timepair(id INTEGER PRIMARY KEY,start_pair TEXT,end_pair TEXT);
CREATE TABLE FamilyMembers(member_id INTEGER PRIMARY KEY,status TEXT,member_name TEXT,birthday TEXT);
CREATE TABLE GoodTypes(good_type_id INTEGER PRIMARY KEY,good_type_name TEXT);
CREATE TABLE Goods(good_id INTEGER PRIMARY KEY,type INTEGER,good_name TEXT,good_price REAL);
CREATE TABLE Payments(payment_id INTEGER PRIMARY KEY,family_member INTEGER,good INTEGER,amount REAL,date TEXT);
CREATE TABLE Users(id INTEGER PRIMARY KEY,name TEXT,email TEXT,phone_number TEXT);
CREATE TABLE Rooms(id INTEGER PRIMARY KEY,owner_id INTEGER,price REAL,has_tv INTEGER,has_internet INTEGER,has_kitchen INTEGER,has_air_con INTEGER);
CREATE TABLE Reservations(id INTEGER PRIMARY KEY,user_id INTEGER,room_id INTEGER,start_date TEXT,end_date TEXT);
CREATE TABLE Reviews(id INTEGER PRIMARY KEY,user_id INTEGER,room_id INTEGER,rating INTEGER);
INSERT INTO Company VALUES (1,'Aeroflot'),(2,'Air France'),(3,'British Airways'),(4,'S7 Airlines');
INSERT INTO Trip VALUES
(1,1,'Boeing 737','Moscow','Paris','08:00','12:00'),(2,2,'Airbus A320','Paris','Moscow','10:00','14:00'),
(3,1,'TU-134','Paris','Moscow','22:00','02:00'),(4,3,'Boeing 777','Paris','London','09:00','10:30'),
(5,2,'Airbus A320','London','Paris','15:00','17:00'),(6,4,'TU-134','Moscow','Kazan','12:00','13:30'),
(7,1,'Boeing 737','Paris','Rome','18:00','20:00'),(8,3,'Boeing 747','New York','Paris','11:00','19:00');
INSERT INTO Passenger VALUES (1,'Bruce Willis'),(2,'George Clooney'),(3,'Leonardo DiCaprio'),(4,'Mary Jane Watson'),(5,'Christopher Robert Evans'),(6,'Alice Brown'),(7,'John Smith');
INSERT INTO Pass_in_trip VALUES
(3,1,'2020-03-17','1A'),(4,1,'2020-04-03','2B'),(7,1,'2020-05-02','3C'),
(3,2,'2020-03-18','4A'),(2,2,'2020-03-20','4B'),(4,3,'2020-03-19','5A'),
(7,3,'2020-03-21','5B'),(1,4,'2020-06-01','6A'),(3,5,'2020-03-22','7A'),
(2,6,'2020-04-12','8A'),(6,6,'2020-05-14','8B'),(1,7,'2020-06-21','9A');
INSERT INTO Class VALUES (1,'10 A',1,25),(2,'10 B',1,24),(3,'9 A',1,26),(4,'11 A',1,22),(5,'8 B',1,20);
INSERT INTO Student VALUES
(1,'2000-03-12','Anna'),(2,'2000-11-04','Boris'),(3,'2001-06-21','Vera'),(4,'2000-01-18','Dmitry'),
(5,'2002-09-02','Elena'),(6,'1999-12-29','Fedor'),(7,'2000-07-17','Galina'),(8,'2001-04-08','Ivan'),
(9,'2003-05-10','Kirill'),(10,'2000-10-30','Lidia'),(11,'2002-02-14','Maxim'),(12,'2001-08-20','Nina');
INSERT INTO Student_in_class VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,3),(9,3),(10,4),(11,4),(12,5);
INSERT INTO Teacher VALUES (1,'Krauze','Karl'),(2,'Ivanov','Petr'),(3,'Petrova','Anna'),(4,'Sidorov','Oleg');
INSERT INTO Subject VALUES (1,'Physical Culture'),(2,'Mathematics'),(3,'Physics'),(4,'History');
INSERT INTO Timepair VALUES (1,'08:30','09:15'),(2,'09:25','10:10'),(3,'10:20','11:05'),(4,'11:15','12:00'),(5,'12:10','12:55'),(6,'13:05','13:50');
INSERT INTO Schedule VALUES
(1,'2019-08-30','101',1,1,1,1,1),(2,'2019-08-30','101',1,1,2,1,2),(3,'2019-08-30','202',2,2,3,1,3),
(4,'2019-08-30','101',1,1,4,1,4),(5,'2019-08-30','303',3,3,5,2,1),(6,'2019-08-29','101',1,1,6,2,2),
(7,'2019-08-30','202',2,2,7,2,4),(8,'2019-08-30','101',1,1,8,3,2),(9,'2019-09-01','303',3,3,9,3,3),
(10,'2019-08-30','202',2,2,10,4,5),(11,'2019-08-30','404',4,4,11,4,1),(12,'2019-08-30','101',1,1,12,5,2);
INSERT INTO FamilyMembers VALUES
(1,'mother','Elena','1975-04-10'),(2,'father','Sergey','1972-09-21'),(3,'son','Alex','2001-02-14'),(4,'daughter','Maria','2004-07-08');
INSERT INTO GoodTypes VALUES (1,'food'),(2,'delicacies'),(3,'vegetables'),(4,'drinks');
INSERT INTO Goods VALUES
(1,1,'bread',30),(2,3,'potato',45),(3,2,'red caviar',850),(4,2,'black caviar',1400),
(5,1,'milk',90),(6,3,'carrot',35),(7,4,'tea',180),(8,1,'cheese',420),(9,3,'tomato',110);
INSERT INTO Payments VALUES
(1,1,2,90,'2005-01-10'),(2,2,3,850,'2005-02-12'),(3,1,4,1400,'2005-03-15'),
(4,3,1,60,'2005-04-20'),(5,4,5,180,'2005-05-02'),(6,2,2,135,'2005-06-11'),
(7,3,8,420,'2006-01-05'),(8,4,6,70,'2005-08-17'),(9,1,7,180,'2005-09-03'),
(10,2,9,220,'2006-10-01'),(11,3,3,850,'2005-11-11'),(12,4,1,30,'2005-12-20');
INSERT INTO Users VALUES
(1,'Alex Green','alex@gmail.com','+375291112233'),(2,'Maria Stone','maria@mail.ru','+79161234567'),
(3,'John Smith','john@gmail.com','+375447778899'),(4,'Olga White','olga@yandex.ru','+375251234567'),
(5,'Peter Brown','peter@mail.ru','+447700900123'),(6,'Nina Fox','nina@outlook.com','+77011234567');
INSERT INTO Rooms VALUES
(1,1,45,1,1,1,1),(2,2,35,1,1,0,1),(3,3,55,1,1,1,1),(4,4,28,0,1,1,0),(5,5,70,1,1,1,1);
INSERT INTO Reservations VALUES
(1,2,1,'2020-03-16','2020-03-20'),(2,3,2,'2020-03-18','2020-03-23'),(3,4,3,'2020-05-01','2020-05-06'),
(4,5,1,'2021-01-10','2021-01-15'),(5,6,5,'2022-07-01','2022-07-08'),(6,2,3,'2023-02-02','2023-02-04'),
(7,3,4,'2020-03-20','2020-03-21'),(8,4,1,'2024-02-01','2024-02-05');
INSERT INTO Reviews VALUES (1,2,1,5),(2,4,1,4),(3,3,2,4),(4,5,3,5),(5,6,3,3),(6,2,5,5);
