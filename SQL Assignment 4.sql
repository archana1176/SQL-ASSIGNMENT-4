create table Country
( Id INT PRIMARY KEY,
 Country_name VARCHAR(50),
 Population INT, 
 Area float);
 
CREATE TABLE Persons 
( Id INT PRIMARY KEY, 
 Fname VARCHAR(50),
 Lname VARCHAR(50),
 Population INT,
 Rating DECIMAL(3, 2),
 Country_Id INT, 
 Country_name VARCHAR(50));
 
 INSERT INTO Country (Id, Country_name, Population, Area) VALUES
 (1, 'India', 1380004385, 3287263),
 (2, 'USA', 331002651, 9833517),
 (3, 'China', 1439323776, 9596961),
 (4, 'Japan', 126476461, 377975),
 (5, 'Germany', 783942, 357022),
 (6, 'UK', 67886011, 243610),
 (7, 'France', 173511, 551695), 
 (8, 'Italy', 60461826, 301340),
 (9, 'Canada', 37742154, 9984670),
 (10, 'Australia', 25499884, 7692024);
 
 INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
 (1, 'Archana', 'Anil', 1380004385, 4.5, 1, 'India'),
 (2, 'John', 'Smith', 331002651, 4.7, 2, 'USA'),
 (3, 'Dang', 'Li', 1439323776, 4.6, 3, 'China'), 
 (4, 'Hiroshi', 'Taka', 126476461, 4.8, 4, 'Japan'),
 (5, 'Hans', 'Mueller', 783942, 4.9, 5, 'Germany'), 
 (6, 'James', 'Brown', 67886011, 4.4, 6, 'UK'),
 (7, 'Marie', 'Dupont', 173511, 4.3, 7, 'France'),
 (8, 'Luca', 'Rossi', 60461826, 4.2, 8, 'Italy'),
 (9, 'Emily', 'Davis', 37742154, 4.1, 9, 'Canada'),
 (10, 'Oliver', 'Wilson', 25499884, 4.0, 10, 'Australia');
 Select distinct Country_name from persons;
Select fname as First_Name , Lname as Last_name from persons;
select fname as Person_with_rating_greater_than_4 from persons where Rating>'4.0';
select Country_name from country where Population>'1000000';
select fname as person from persons where Country_name='USA' or Rating >'4.5';
select fname as person from persons where Country_name is null;
select Fname as person, Country_name from Persons where Country_name IN ('USA', 'Canada', 'UK');
select Fname as person, Country_name from  Persons where Country_name NOT IN ('India', 'Australia');
select Country_name, Population from Country where Population between '500000' and '2000000';
select Country_name from Country where Country_name not like 'C%';



 

 