SELECT * FROM employees;
-- 직원 데이터 추가
-- INSERT INTO employees (name, position, salary) VALUES 
--     ('혜린', 'PM', 90000),
--     ('은우', 'Frontend', 80000),
--     ('가울', 'Backend', 92000),
--     ('지수', 'Frontend', 78000),
--     ('민혁', 'Frontend', 96000),
--     ('하온', 'Backend', 130000);


-- SELECT name, salary
-- FROM employees;

-- Frontend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회하세요.
-- SELECT name, salary
-- FROM employees
-- WHERE position = 'Frontend'
--   AND salary <= 90000;

-- PM 직책 직원 연봉을 10% 인상 후 결과 확인
-- UPDATE employees
-- SET salary = salary * 1.10
-- WHERE position = 'PM';
-- 결과 확인
-- SELECT name, salary
-- FROM employees
-- WHERE position = 'PM';

-- 모든 Backend 직책 직원의 연봉을 5% 인상
-- UPDATE employees
-- SET salary = salary * 1.05
-- WHERE position = 'Backend';

-- 민혁 사원의 데이터를 삭제
-- DELETE FROM employees WHERE name = '민혁';

-- 모든 직원을 position 별로 그룹화하여 각 직책의 편균 연봉 계산
SELECT position, AVG(salary) AS avg_salary
FROM employees
GROUP BY position;

-- employees 테이블을 삭제
DROP TABLE employees;

