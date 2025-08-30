-- 1. средняя оценка по каждому курсу
select
	c.course_name,
	round(AVG(f.grade), 2) as average_grade
from fact_grades f
join dim_course c on f.course_id = c.course_id 
group by c.course_name 
order by average_grade desc; 

-- 2. процент успешно сдавших студентов по каждому преподавателю
select  
    t.full_name as teacher,
    COUNT(*) as total_students,
    COUNT(case when f.passed then 1 end) * 100.0 / COUNT(*) as pass_rate_percent
from fact_grades f
join dim_teacher t on f.teacher_id = t.teacher_id
group by t.full_name
order by pass_rate_percent desc;

-- 3. посещаемость студентов по семестрам
select 
    term.term_name,
    term.start_date,
    ROUND(AVG(f.attendance_percent), 2) as avg_attendance
from fact_grades f
join dim_term term ON f.term_id = term.term_id
group by term.term_name, term.start_date
order by term.start_date;

-- 4. студенты, не сдавшие хотя бы один курс
select 
    s.full_name,
    COUNT(*) as failed_courses
from  fact_grades f
join dim_student s on f.student_id = s.student_id
where f.passed = false
group by s.full_name
order by failed_courses desc;

-- 5. cамые популярные курсы (по количеству записей)
select 
    c.course_name,
    COUNT(*) as enrollment_count
from fact_grades f
join dim_course c on f.course_id = c.course_id
group by c.course_name
order by enrollment_count desc;
