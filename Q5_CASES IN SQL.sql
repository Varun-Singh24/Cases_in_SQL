USE employees ; 

Select * from employees ; 

Select name as Employee_name from employees ; 
-- Basic CASES  

-- Basic case for sales team
select name, 
case department
	when 'sales' then 'sales team'
    else 'other'
end as employee_name from Employees;

SELECT 
    name,
    CASE Department
        WHEN 'sales' THEN 'Sales Team'
        WHEN 'marketing' THEN 'Marketing Team'
        ELSE 'other'
    END AS employee_name
FROM
    employees; 

-- CASE for AGE 

SELECT 
    name,
    CASE 
        WHEN age < 30  THEN 'Young' 
        WHEN age >= 30 and age <= 40 then 'Mid- aged'
        ELSE 'Senior'
    END AS employee_name
FROM
    employees; 


-- CASE AS IF ELSE 

SELECT 
    name,
    CASE
        WHEN age < 30 THEN 
        Case when Department = 'Sales' then 'Jr Sales' 
        ELSE 'Junior'
    END 
    end AS employee_name
FROM
    employees; 

-- NESTED CASE 

SELECT 
    name,
    CASE
        WHEN
            age < 30
        THEN
            CASE
                WHEN Department = 'Sales' THEN 'Jr Sales'
                ELSE 'Junior'
            END
        WHEN age >= 30 AND age <= 40 THEN 'Mid-aged'
        ELSE 'Senior'
    END AS employee_name
FROM
    employees; 

-- DEALING with NULL values 
SELECT name,
		CASE 
        WHEN Department is null then 'No departmrnt Assigned' 
        Else Department
	END As Department_Status FROM Employees 


-- CASE for Voting age 
SELECT 
    name,
    CASE
        WHEN age >= 18 THEN 'Elligible to VOTE'
        ELSE 'Not Elligible To Vote'
    END AS Voting Elligibility 
FROM
    employees; 
    
    
    
    
    