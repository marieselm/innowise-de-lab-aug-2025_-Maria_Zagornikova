--создание таблиц измерений

--студенты
create table dim_student (
	student_id SERIAL primary key,
	full_name VARCHAR(100) not null,
	gender VARCHAR(10),
	birth_date DATE,
	email VARCHAR(100),
	phone VARCHAR(20),
	major VARCHAR(100)
);

--преподаватели 
create table dim_teacher(
	teacher_id SERIAL primary key,
	full_name VARCHAR(100) not null,
	gender VARCHAR(10),
	birth_date DATE,
	email VARCHAR(100),
	phone VARCHAR(20),
	title VARCHAR(50),
	department VARCHAR(100)
);

--курсы
create table dim_course (
	course_id SERIAL primary key,
	course_name VARCHAR(100) not null,
	course_description TEXT,
	credits INT check (credits >= 0)
);

--учебные периоды (семестры)
create table dim_term(
	term_id SERIAL primary key,
	term_name VARCHAR(50) not null,
	start_date DATE,
	end_date DATE
);

--таблица фактов
create table fact_grades (
    grades_id SERIAL primary key,
    student_id INT references dim_student(student_id),
    course_id INT references  dim_course(course_id),
    teacher_id INT references dim_teacher(teacher_id),
    term_id INT references dim_term(term_id),
    grade DECIMAL(4,2) check (grade >= 0 and grade <= 10),
    attendance_percent DECIMAL(5,2) check (attendance_percent >= 0 and attendance_percent <= 100),
    passed BOOLEAN
);

--заполнение таблиц

-- студенты
INSERT INTO dim_student (full_name, gender, birth_date, email, phone, major) VALUES
('Alice Johnson', 'Female', '2002-04-15', 'alice.johnson@example.com', '+1234567890', 'Computer Science'),
('Bob Smith', 'Male', '2001-09-30', 'bob.smith@example.com', '+1234567891', 'Data Analytics'),
('Catherine Lee', 'Female', '2003-01-22', 'catherine.lee@example.com', '+1234567892', 'Information Systems'),
('David Kim', 'Male', '2002-07-08', 'david.kim@example.com', '+1234567893', 'Software Engineering'),
('Eva Brown', 'Female', '2001-12-05', 'eva.brown@example.com', '+1234567894', 'Business Intelligence');

-- преподаватели
INSERT INTO dim_teacher (full_name, gender, birth_date, email, phone, title, department) VALUES
('Dr. John Miller', 'Male', '1975-06-12', 'john.miller@university.edu', '+1234567800', 'Professor', 'Computer Science'),
('Dr. Sarah Davis', 'Female', '1980-03-25', 'sarah.davis@university.edu', '+1234567801', 'Associate Professor', 'Data Analytics'),
('Dr. Kevin Wilson', 'Male', '1985-11-10', 'kevin.wilson@university.edu', '+1234567802', 'Lecturer', 'Information Systems'),
('Dr. Emily Clark', 'Female', '1978-08-18', 'emily.clark@university.edu', '+1234567803', 'Senior Lecturer', 'Software Engineering'),
('Dr. Michael Scott', 'Male', '1982-02-02', 'michael.scott@university.edu', '+1234567804', 'Professor', 'Business Intelligence');

-- курсы
INSERT INTO dim_course (course_name, course_description, credits) VALUES
('SQL Fundamentals', 'Learn basic SQL queries and relational concepts.', 3),
('Data Warehousing', 'Explore data warehouse architecture and ETL processes.', 4),
('Entity-Relationship Modeling', 'Design ER diagrams and normalize data.', 2),
('Advanced Analytics', 'Apply statistical methods to large datasets.', 3),
('Business Intelligence Tools', 'Use BI platforms for reporting and dashboards.', 3);

-- учебные периоды (семестры)
INSERT INTO dim_term (term_name, start_date, end_date) VALUES
('Spring 2025', '2025-02-01', '2025-06-01'),
('Fall 2025', '2025-09-01', '2025-12-20'),
('Winter 2024', '2024-01-10', '2024-04-30'),
('Summer 2024', '2024-06-15', '2024-08-30'),
('Spring 2024', '2024-02-01', '2024-05-30');

-- таблица фактов
INSERT INTO fact_grades (student_id, course_id, teacher_id, term_id, grade, attendance_percent, passed) VALUES
(1, 1, 1, 1, 8.50, 95.00, TRUE),
(2, 2, 2, 2, 7.20, 88.50, TRUE),
(3, 3, 3, 3, 6.00, 70.00, FALSE),
(4, 4, 4, 4, 9.10, 98.00, TRUE),
(5, 5, 5, 5, 5.50, 65.00, FALSE);

