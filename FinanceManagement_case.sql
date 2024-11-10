create database Finance
-- 1. Create the Users table
create table Users (
    user_id int primary key identity(1,1),
    username varchar(50) not null,
    password varchar(100) not null,
    email varchar(100) unique not null
);

-- 2. Create the ExpenseCategories table
create table ExpenseCategories (
    category_id int primary key identity(1,1),
    category_name varchar(50) not null
);

-- 3. Create the Expenses table
create table Expenses (
    expense_id int primary key identity(1,1),
    user_id int,
    amount decimal(10, 2) not null,
    category_id int,
    date date not null,
    description varchar(255),
    foreign key (user_id) references Users(user_id) on delete cascade,
    foreign key (category_id) references ExpenseCategories(category_id) on delete set null
);
INSERT INTO Users (username, password, email) 
VALUES 
    ('Vignesh', 'vigneshPass123', 'vignesh@gmail.com'),
    ('Sanjay', 'sanjayPass456', 'sanjay@gmail.com'),
    ('Harsha', 'harshaPass789', 'harsha@gmail.com'),
    ('Vasanth', 'vasanthPass321', 'vasanth@gmail.com'),
    ('Vicky', 'vickyPass654', 'vicky@gmail.com');

INSERT INTO ExpenseCategories (category_name) 
VALUES 
    ('Groceries'),
    ('Utilities'),
    ('Entertainment'),
    ('Transportation'),
    ('Healthcare');

INSERT INTO Expenses (user_id, amount, category_id, date, description) 
VALUES 
    (1, 75.50, 1, '2024-11-01', 'Weekly groceries purchase'),
    (2, 120.00, 2, '2024-11-02', 'Monthly electricity bill'),
    (3, 40.00, 3, '2024-11-03', 'Movie and snacks'),
    (4, 25.00, 4, '2024-11-04', 'Fuel for commute'),
    (5, 80.00, 5, '2024-11-05', 'Health check-up');

	
select * from Users
select * from Expenses
select * from ExpenseCategories
