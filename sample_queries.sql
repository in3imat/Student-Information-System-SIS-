-- 1. How many students are there in each department?

SELECT D.Name AS Department, COUNT(S.ID) AS StudentCount
FROM Students S
INNER JOIN Departments D ON S.Department_Id = D.ID
GROUP BY D.Name;

-- 2. What is the average grade of each student?

SELECT S.ID AS StudentID, S.FirstName + ' ' + S.LastName AS StudentName, 
       AVG(G.Grade) AS AverageGrade
FROM Grades G
INNER JOIN Students S ON S.ID = G.Student_Id
GROUP BY S.ID, S.FirstName, S.LastName;

-- 3. Which students have failed any course (grade < 50)?

SELECT S.FirstName, S.LastName, G.Grade, Sec.Name AS Section
FROM Grades G
INNER JOIN Students S ON S.ID = G.Student_Id
INNER JOIN Sections Sec ON G.Section_Id = Sec.ID
WHERE G.Grade < 50;

-- 4. Show attendance summary (Present, Absent) for each student

SELECT S.ID, S.FirstName + ' ' + S.LastName AS StudentName,
       A.Status, COUNT(*) AS Total
FROM Attendance A
INNER JOIN Students S ON A.Student_Id = S.ID
GROUP BY S.ID, S.FirstName, S.LastName, A.Status;

-- 5. List all students enrolled in a specific section (e.g., Section ID = 1)

SELECT S.FirstName, S.LastName, Sec.Name AS Section
FROM Student_Sections SS
INNER JOIN Students S ON SS.Student_Id = S.ID
INNER JOIN Sections Sec ON SS.Section_Id = Sec.ID
WHERE Sec.ID = 1;

-- 6. Get the total number of courses taught by each instructor

SELECT I.FirstName + ' ' + I.LastName AS InstructorName,
       COUNT(DISTINCT S.Course_Id) AS TotalCourses
FROM Sections S
INNER JOIN Instructors I ON S.Instructor_Id = I.ID
GROUP BY I.FirstName, I.LastName;

-- 7. Average grade per course

SELECT C.Name AS CourseName, AVG(G.Grade) AS AverageGrade
FROM Grades G
INNER JOIN Sections S ON G.Section_Id = S.ID
INNER JOIN Courses C ON S.Course_Id = C.ID
GROUP BY C.Name;

-- 8. List students with their phone numbers
SELECT S.FirstName + ' ' + S.LastName AS StudentName, P.Phone
FROM Students S
INNER JOIN Student_Phones P ON S.ID = P.Student_Id;


