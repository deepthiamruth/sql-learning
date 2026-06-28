
INSERT INTO corp.Departments
VALUES
(1, 'Engineering'),
(2, 'Data Engineering'),
(3, 'Quality Assurance'),
(4, 'Human Resources'),
(5, 'Finance');

INSERT INTO corp.Roles
VALUES
(1, 'Software Engineer'),
(2, 'Senior Software Engineer'),
(3, 'Data Engineer'),
(4, 'Team Lead'),
(5, 'Manager');

INSERT INTO corp.Clients
VALUES
(1, 'Tesla', 'USA', 'Automotive'),
(2, 'BMW', 'Germany', 'Automotive'),
(3, 'Microsoft', 'USA', 'Technology'),
(4, 'Amazon', 'USA', 'E-Commerce');

INSERT INTO corp.Projects
VALUES
(101, 'Connected Vehicle Platform', 1, '2025-01-01', NULL, 1200000, 'Active'),
(102, 'Autonomous Driving Analytics', 2, '2025-02-15', NULL, 1500000, 'Active'),
(103, 'Cloud Migration', 3, '2025-03-01', NULL, 900000, 'Active'),
(104, 'AI Chatbot', 4, '2025-04-01', NULL, 750000, 'Active'),
(105, 'Employee Portal', 3, '2024-01-01', '2025-01-30', 500000, 'Completed'),
(106, 'Data Warehouse Modernization', 4, '2025-05-01', NULL, 1800000, 'Active');

INSERT INTO corp.Employees
VALUES
(
    1000,
    'Amit',
    'Agarwal',
    'ceo@techcorp.com',
    '2015-01-01',
    300000,
    1,
    5,
    NULL
);

INSERT INTO corp.Employees
VALUES
(1001,'Rahul','Sharma','rahul@techcorp.com','2018-05-10',180000,1,5,1000),
(1002,'Priya','Reddy','priya@techcorp.com','2019-03-15',175000,2,5,1000),
(1003,'Ankit','Verma','ankit@techcorp.com','2018-09-20',170000,3,5,1000),
(1004,'Neha','Gupta','neha@techcorp.com','2020-01-10',165000,4,5,1000),
(1005,'Karan','Patel','karan@techcorp.com','2019-06-18',172000,5,5,1000);

INSERT INTO corp.Employees
VALUES
(1006,'Amit','Singh','amit.singh@techcorp.com','2021-02-15',120000,1,4,1001),
(1007,'Sneha','Joshi','sneha@techcorp.com','2021-04-18',118000,2,4,1002),
(1008,'Vikram','Nair','vikram@techcorp.com','2021-07-12',115000,3,4,1003),
(1009,'Pooja','Mehta','pooja@techcorp.com','2022-01-08',110000,4,4,1004),
(1010,'Rohit','Kulkarni','rohit@techcorp.com','2021-11-11',117000,5,4,1005);

INSERT INTO corp.Employees
VALUES
(1011,'Arjun','Rao','arjun@techcorp.com','2023-01-15',70000,1,1,1006),
(1012,'Meera','Iyer','meera@techcorp.com','2023-03-10',72000,1,1,1006),
(1013,'Suresh','Kumar','suresh@techcorp.com','2022-12-01',85000,1,2,1006),

(1014,'Nisha','Kapoor','nisha@techcorp.com','2023-04-01',80000,2,3,1007),
(1015,'Varun','Mishra','varun@techcorp.com','2023-06-12',82000,2,3,1007),
(1016,'Divya','Menon','divya@techcorp.com','2024-01-05',78000,2,3,1007),

(1017,'Rakesh','Yadav','rakesh@techcorp.com','2023-02-20',68000,3,1,1008),
(1018,'Anjali','Shah','anjali@techcorp.com','2023-07-01',71000,3,1,1008),
(1019,'Manoj','Jain','manoj@techcorp.com','2022-10-15',86000,3,2,1008),

(1020,'Kavya','Bose','kavya@techcorp.com','2024-02-01',65000,4,1,1009); 

INSERT INTO corp.EmployeeProjects
VALUES
(1011,101,'2025-01-10',100),
(1012,101,'2025-01-10',100),
(1013,101,'2025-01-10',100),

(1014,106,'2025-05-10',100),
(1015,106,'2025-05-10',100),
(1016,106,'2025-05-10',100),

(1017,102,'2025-02-20',100),
(1018,102,'2025-02-20',100),
(1019,102,'2025-02-20',100),

(1020,105,'2024-02-01',100),

(1006,101,'2025-01-01',50),
(1007,106,'2025-05-01',50),
(1008,102,'2025-02-01',50),
(1009,105,'2024-01-01',50),
(1010,103,'2025-03-01',50);

INSERT INTO corp.Tasks
VALUES
(1,101,1011,'Develop Vehicle API','High','Completed','2025-02-15'),
(2,101,1012,'Implement Authentication','High','Completed','2025-02-20'),
(3,101,1013,'Code Review','Medium','Completed','2025-02-25'),

(4,102,1017,'Test ADAS Module','High','In Progress','2025-07-15'),
(5,102,1018,'Create Test Cases','Medium','Completed','2025-06-20'),
(6,102,1019,'Automation Scripts','High','In Progress','2025-07-25'),

(7,106,1014,'Build ETL Pipeline','High','Completed','2025-06-10'),
(8,106,1015,'Data Validation','Medium','Completed','2025-06-15'),
(9,106,1016,'Performance Tuning','High','In Progress','2025-07-30'),

(10,103,1010,'Cloud Architecture','High','Completed','2025-05-10'),

(11,104,1006,'Chatbot Backend','High','In Progress','2025-08-01'),
(12,104,1007,'Prompt Engineering','Medium','Open','2025-08-10'),

(13,105,1020,'HR Portal Enhancement','Low','Completed','2025-01-10'),

(14,101,1006,'Technical Design','High','Completed','2025-01-20'),
(15,106,1007,'Data Modeling','High','Completed','2025-05-20');

INSERT INTO corp.Timesheets
VALUES
(1,1011,101,'2025-06-01',8),
(2,1011,101,'2025-06-02',8),
(3,1012,101,'2025-06-01',7.5),
(4,1013,101,'2025-06-01',8),

(5,1014,106,'2025-06-01',8),
(6,1015,106,'2025-06-01',7),
(7,1016,106,'2025-06-01',8),

(8,1017,102,'2025-06-01',8),
(9,1018,102,'2025-06-01',7.5),
(10,1019,102,'2025-06-01',8),

(11,1006,101,'2025-06-01',6),
(12,1007,106,'2025-06-01',6),
(13,1008,102,'2025-06-01',6),

(14,1009,105,'2025-06-01',5),
(15,1010,103,'2025-06-01',5),

(16,1011,101,'2025-06-03',8),
(17,1012,101,'2025-06-03',8),
(18,1014,106,'2025-06-03',8),
(19,1017,102,'2025-06-03',8),
(20,1019,102,'2025-06-03',7.5);

INSERT INTO corp.PerformanceReviews
VALUES
(1,1001,'2025-03-31',5,'Outstanding leadership'),
(2,1002,'2025-03-31',4,'Strong technical guidance'),
(3,1003,'2025-03-31',4,'Excellent QA management'),
(4,1004,'2025-03-31',4,'Strong people management'),
(5,1005,'2025-03-31',5,'Excellent financial planning'),

(6,1006,'2025-03-31',4,'Delivered project milestones'),
(7,1007,'2025-03-31',5,'Exceptional data leadership'),
(8,1008,'2025-03-31',4,'High quality testing'),
(9,1009,'2025-03-31',3,'Met expectations'),
(10,1010,'2025-03-31',4,'Strong cloud expertise'),

(11,1011,'2025-03-31',4,'Consistent performer'),
(12,1012,'2025-03-31',5,'Top performer'),
(13,1013,'2025-03-31',4,'Strong code quality'),
(14,1014,'2025-03-31',5,'Excellent ETL development'),
(15,1015,'2025-03-31',4,'Reliable contributor'),

(16,1016,'2025-03-31',3,'Meeting expectations'),
(17,1017,'2025-03-31',4,'Good testing skills'),
(18,1018,'2025-03-31',5,'Excellent automation work'),
(19,1019,'2025-03-31',4,'Strong technical skills'),
(20,1020,'2025-03-31',3,'Good support for HR systems');