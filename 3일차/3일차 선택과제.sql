use CHAllenge;

CREATE TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
position VARCHAR(100) NOT NULL,
salary DECIMAL(10,2)
);

INSERT INTO employees (name, position, salary) VALUES
('혜린', 'PM', 90000),
('은우', 'Frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 78000),
('민혁', 'Frontend', 96000),
('하온', 'Backend', 130000);

SELECT * FROM employees; -- 모든 정보 조회

SELECT name, salary  -- Frontend 직책, 연봉 90000이하 조회 
From employees
WHERE position = 'Frontend' AND salary <= 90000;

UPDATE employees SET salary = salary * 1.1 where position = 'PM'; -- 'pm' 연봉 10% 인상
SELECT * FROM employees
WHERE position = 'PM';

UPDATE employees SET salary = salary * 1.05 -- 'Backend' 연봉 5% 인사
WHERE position = 'Backend';

DELETE FROM employees
WHERE name = '민혁';

SELECT position,
AVG(salary) AS avr_salary
FROM employees
GROUP BY position;

DROP TABLE employees;


