Online Examination System
An online virtual test or examination system developed using Java, JDK, MySQL, and Tomcat 9. This application allows users to take exams remotely, submit answers, and receive scores automatically. It is designed for educational institutions and organizations to manage online tests efficiently.

Table of Contents
Features
Technologies Used
Requirements
Installation
Configuration
Usage
Database Schema
Contributing
License
Features
User registration and login
Question and exam management
Timer-based examination
Automatic grading and scoring
Admin dashboard for question and user management
Secure, role-based access
Technologies Used
Frontend: HTML, CSS, JavaScript, JSP (Java Server Pages)
Backend: Java (JDK), Servlet
Database: MySQL
Server: Apache Tomcat 9
Requirements
JDK (Java Development Kit) 8 or above
MySQL 5.7 or above
Apache Tomcat 9
IDE (Eclipse/IntelliJ IDEA) for code development
Installation
Clone the Repository

bash
Copy code
git clone https://github.com/yourusername/online-examination-system.git
cd online-examination-system
Import Project in IDE

Open your preferred IDE (e.g., Eclipse or IntelliJ IDEA).
Import the project as an existing Maven project.
Set up MySQL Database

Create a MySQL database named online_exam.
Import the SQL file located at database/online_exam.sql to set up tables and sample data.
Configure Database Connection

Open src/main/resources/db.properties.
Edit the file with your MySQL username and password.
Deploy to Apache Tomcat

Ensure Tomcat 9 is installed and configured in your IDE.
Deploy the project to the Tomcat server.
Run the Application

Start the Tomcat server and access the application in your browser at:
bash
Copy code
http://localhost:8080/online-examination-system
Configuration
Database Configuration: Located in db.properties.
Server Configuration: Modify server.xml in the Tomcat configuration if custom ports are required.
Usage
Admin can log in to manage users, questions, and exams.
Students can log in to view available exams, start an exam, and view their results.
Database Schema
Users Table: Stores information about registered users (admin and students).
Exams Table: Stores information about available exams.
Questions Table: Stores the questions associated with each exam.
Results Table: Stores the results and scores of students.
Contributing
Contributions are welcome! Please follow these steps:

Fork the repository.
Create a new branch (feature/YourFeatureName).
Make your changes.
Submit a pull request.
