# Library Management System

## Project Overview
The Library Management System is a web-based application designed to manage and automate the operations of a library. The system allows administrators to manage books, students, and transactions efficiently. Students can view available books, borrow them, and return them. Admins have full control over adding and managing books, students, and transaction records.

## Key Features
- **User Management:** Admin can add, delete, and manage student accounts.
- **Book Management:** Admin can add new books, update book details, and manage availability.
- **Borrowing System:** Students can borrow books, and transactions are logged with issue and return dates.
- **Fine Calculation:** The system tracks overdue books and calculates fines.
- **Authentication and Authorization:** Separate login interfaces for Admin and Students.

## Technologies Used
- **Java**: Core language for business logic.
- **Hibernate (ORM)**: Used for database interaction and table creation.
- **Servlets and JSP**: For handling requests and rendering dynamic content.
- **MySQL 5.5**: Database used to store library data.
- **Apache Tomcat 9**: Server for deploying and running the web application.
- **Maven**: For dependency management and project build.
- **HTML/CSS**: Frontend design for the user interface.

## Database Schema
### Tables
- **Users Table**:
  - `user_id` (Primary Key)
  - `name`
  - `email_id`
  - `password`
  - `role` (Admin/Student)
- **Books Table**:
  - `book_id` (Primary Key)
  - `title`
  - `author`
  - `publisher`
  - `availability` (Yes/No)
- **Transactions Table**:
  - `transaction_id` (Primary Key)
  - `user_id` (Foreign Key)
  - `book_id` (Foreign Key)
  - `issue_date`
  - `return_date`
  - `fine`

## Configuration
### Persistence.xml (JPA Configuration)
- Database URL: `jdbc:mysql://localhost:3306/LibraryManagement_Project?createDatabaseIfNotExist=true`
- Driver: `com.mysql.jdbc.Driver`
- Hibernate dialect: `org.hibernate.dialect.MySQLDialect`
- Auto table creation: `hibernate.hbm2ddl.auto=update`

### Deployment
- Clone the repository from GitHub.
- Import the project into Eclipse as a Maven project.
- Configure Tomcat 9 server in Eclipse.
- Ensure MySQL 5.5 is running and accessible.
- Deploy the project on Tomcat and access the application at `http://localhost:8080/LibraryManagementSystem`.

## How to Run
1. Start MySQL Server.
2. Deploy the project on Tomcat 9.
3. Access the application through the browser.
4. Admin can log in to manage the system, and students can register and borrow books.

