 -- Find the students who are enrolled in more than one course:
 #Select Students.first_name from ENROLLMENTS INNER JOIN STUDENTS ON STUDENTS.student_id=ENROLLMENTS.student_id GROUP BY STUDENTS.student_id HAVING COUNT(ENROLLMENTS.course_id)>=2;
  -- List the courses along with the count of students enrolled in each course:
  #Select Courses.course_name,COUNT(Enrollments.student_id) as Student_Count from COURSES LEFT JOIN ENROLLMENTS ON COURSES.course_id=ENROLLMENTS.course_id GROUP BY COURSES.course_id;
   -- Retrieve the student who is enrolled in the most courses:
   #SELECT CONCAT(STUDENTS.first_name,'',STUDENTS.last_name) as STUDENT_NAME FROM STUDENTS INNER JOIN ENROLLMENTS ON STUDENTS.student_id=ENROLLMENTS.student_id GROUP BY STUDENTS.student_id ORDER BY COUNT(ENROLLMENTS.course_id) DESC LIMIT 1
    -- Find the courses with no enrolled students:
    SELECT COURSES.course_name FROM COURSES LEFT JOIN ENROLLMENTS ON COURSES.course_id=ENROLLMENTS.course_id WHERE ENROLLMENTS.student_id IS NULL  