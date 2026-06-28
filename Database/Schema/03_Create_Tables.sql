--Start with these tables.

--Departments
CREATE TABLE corp.Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);
--Roles
CREATE TABLE corp.Roles
(
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100) NOT NULL
);
--Employees
CREATE TABLE corp.Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),

    DepartmentID INT NOT NULL,
    RoleID INT NOT NULL,

    ManagerID INT NULL,

    FOREIGN KEY (DepartmentID)
        REFERENCES corp.Departments(DepartmentID),

    FOREIGN KEY (RoleID)
        REFERENCES corp.Roles(RoleID),

    FOREIGN KEY (ManagerID)
        REFERENCES corp.Employees(EmployeeID)
);
--Clients
CREATE TABLE corp.Clients
(
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    Industry VARCHAR(100)
);
--Projects
CREATE TABLE corp.Projects
(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    ClientID INT NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(12,2),
    Status VARCHAR(20),

    FOREIGN KEY (ClientID)
        REFERENCES corp.Clients(ClientID)
);
--EmployeeProjects
CREATE TABLE corp.EmployeeProjects
(
    EmployeeID INT,
    ProjectID INT,
    AssignedDate DATE,
    AllocationPercentage INT,

    PRIMARY KEY(EmployeeID, ProjectID),

    FOREIGN KEY(EmployeeID)
        REFERENCES corp.Employees(EmployeeID),

    FOREIGN KEY(ProjectID)
        REFERENCES corp.Projects(ProjectID)
);
--Tasks
CREATE TABLE corp.Tasks
(
    TaskID INT PRIMARY KEY,
    ProjectID INT NOT NULL,
    AssignedEmployeeID INT NOT NULL,

    TaskName VARCHAR(200),
    Priority VARCHAR(20),
    Status VARCHAR(20),
    DueDate DATE,

    FOREIGN KEY(ProjectID)
        REFERENCES corp.Projects(ProjectID),

    FOREIGN KEY(AssignedEmployeeID)
        REFERENCES corp.Employees(EmployeeID)
);
--Timesheets
CREATE TABLE corp.Timesheets
(
    TimesheetID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ProjectID INT NOT NULL,
    WorkDate DATE,
    HoursWorked DECIMAL(4,2),

    FOREIGN KEY(EmployeeID)
        REFERENCES corp.Employees(EmployeeID),

    FOREIGN KEY(ProjectID)
        REFERENCES corp.Projects(ProjectID)
);
--PerformanceReviews
CREATE TABLE corp.PerformanceReviews
(
    ReviewID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ReviewDate DATE,
    Rating INT,
    Comments VARCHAR(500),

    FOREIGN KEY(EmployeeID)
        REFERENCES corp.Employees(EmployeeID)
);