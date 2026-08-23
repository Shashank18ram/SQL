# Library Management System
# Creating the structure

CREATE DATABASE library_db;

USE library_db;

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author_name VARCHAR(100),
    genre VARCHAR(50),
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1
);

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

# Books: Add a column to track the Book_Condition with default value 'Good'


# Books: Modify the column Title as it can have bigger title names


#Members: Add a column name Membership type with default value 'standard'



-- Insert 10 books
INSERT INTO books (title, author_name, genre, total_copies, available_copies) VALUES
('Malgudi Days', 'R.K. Narayan', 'Fiction', 3, 3),
('The White Tiger', 'Aravind Adiga', 'Fiction', 4, 4),
('Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 5, 5),
('The Alchemist', 'Paulo Coelho', 'Fiction', 6, 6),
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 4, 4),
('The Guide', 'R.K. Narayan', 'Fiction', 2, 2),
('Atomic Habits', 'James Clear', 'Self-Help', 5, 5),
('A Brief History of Time', 'Stephen Hawking', 'Science', 3, 3),
('The Immortals of Meluha', 'Amish Tripathi', 'Fantasy', 4, 4),
('Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 2, 2);
-- Insert 10 members
INSERT INTO members (member_name, email, join_date) VALUES
('Priya Sharma', 'priya.sharma@email.com', '2024-01-10'),
('Rahul Verma', 'rahul.verma@email.com', '2024-01-15'),
('Ananya Rao', 'ananya.rao@email.com', '2024-02-01'),
('Karan Mehta', 'karan.mehta@email.com', '2024-02-10'),
('Sneha Iyer', 'sneha.iyer@email.com', '2024-02-20'),
('Vikram Singh', 'vikram.singh@email.com', '2024-03-05'),
('Neha Gupta', 'neha.gupta@email.com', '2024-03-12'),
('Arjun Nair', 'arjun.nair@email.com', '2024-03-25'),
('Divya Patel', 'divya.patel@email.com', '2024-04-02'),
('Rohan Kapoor', 'rohan.kapoor@email.com', '2024-04-18');

# Note:
#book_id and member_id are AUTO_INCREMENT, so MySQL assigns 1 through 10 automatically for each table.
#The email column has a UNIQUE constraint, so each value here is distinct.
#membership_type and condition_status default to 'Standard' and 'Good' since they aren't specified.

# When the book with ID 1 gets borrowed it needs to be updated under Books table


# When the book with ID 1 is returned it needs to be updated under Books table


# When a member with ID 1 upgrades membership to 'Premium' it needs to be updated under Members table


# The Member with ID 2 decides to cancel the membership. The record needs to be removed from the Members table


# Display all records of Books table

# Display all records of Members table

# Display only Title and Author_name of Books table

# Display books published by author 'R.K.Narayan'


# Show Members who joined after March 2024


# Arrange the books alphabetically by Title


#Arrange members sorted by Joining_date, most recent first


# Show the 3 most recently joined members


# Show books with "The" in the title


# Show members whose email starts with 'a'


# Show books that belongs to 'Fiction' or 'Science' Genre


# Show only unique Genre from Books


# Show Fiction books with total more than 3 copies



# Show Members who Joined in January or February 2024


# Show total No. of books in the Catalog


# Show Total copies across all Books


# Show average Copies per book


# Show Number of Books per Genre


# Show Genre having more than 1 Book
