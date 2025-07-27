# 🎓 Student Information System (SIS)

A structured and practical **Student Information System** built using **SQL Server**, designed to manage essential academic data such as students, instructors, departments, courses, sections, grades, and attendance.

---

## 🗂️ Database Structure

- **Students**: Student information (name, birthdate, gender, department, email, etc.).
- **Instructors**: Faculty data with specialization and department.
- **Departments**: Academic departments and their heads.
- **Courses**: Course list with credits and descriptions.
- **Sections**: Course groups with assigned instructors.
- **Student_Sections**: Enrollment relationship between students and sections.
- **Grades**: Grades for each student in each section.
- **Attendance**: Daily attendance records.
- **Student_Phones / Instructor_Phones / Instructor_Emails**: Contact information.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `create_tables.sql` | Contains `CREATE TABLE` statements (database schema). |
| `insert_dummy_data.sql` | Contains `INSERT INTO` statements with dummy student/instructor/course data. |
| `sample_queries.sql` | Contains ready-to-use SQL queries and analytics reports.|

---

## 🚀 How to Use

1. Open **SQL Server Management Studio (SSMS)**.
2. Run `create_tables.sql` to create all tables and relationships.
3. Run `insert_dummy_data.sql` to populate the database with sample data.
4. To test queries and generate reports, **run the `sample_queries.sql`** file.

---

## 🎯 Project Goals

- Practice building a normalized and relational SQL Server database.
- Apply database design principles including keys, constraints, and indexing.
- Provide ready-to-run SQL queries for reporting and analysis.
- Build a portfolio project for GitHub to demonstrate database development skills.

---

## 📖 License

This project is licensed for **educational and non-commercial use only**.  
Feel free to fork, study, and extend the project for personal learning purposes.

---

## 👨‍💻 Author

**AHMAD ALNAIMAT**  
Database Developer | SQL Server Specialist  
[GitHub Profile](https://github.com/in3imat) 
