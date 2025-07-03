%Student
student(alice).
student(bob).
student(carol).

%course
course(cs101).
course(cs102).
course(math2021).

%Instructors
instuctor(prof_smith).
instuctor(prof_jones).

%Teaches relationship
teaches(prof_smith,cs101).
teaches(prof_smith,cs102).
teaches(prof_jones,math2021).

%Enrollments
enrolled(alice,cs101).
enrolled(bob,cs101).
enrolled(alice,cs102).
enrolled(carol,math2021).

%Grades
grade(alice,cs101,85).
grade(bob,cs102,55).
grade(alice,cs102,65).
grade(carol,cs101,25).

% A student passes a course if their garde is >= 50
passed(Student,Course) :- grade(Student,Course,Mark),Mark >= 50.

%A student fails a course if their grade is < 50
failed(Student,Course) :- grade(Student,Course,Mark),Mark < 50.

%Who teaches a student in a specific course
teach_course(Student,Teacher) :- teaches(Teacher,Course),enrolled(Student,Course).

