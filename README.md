# Cases_in_SQL
# 📌 SQL Practice: CASE Statements

This repository demonstrates the usage of the **CASE** statement in SQL using the `employees` database.  
The CASE statement works like **IF–ELSE logic** and is useful for conditional data transformation inside queries.

---

## 📂 Database Used

```sql
USE employees;
SELECT * FROM employees;
```
🔹 Selecting Specific Columns
Alias Usage
```
SELECT name AS Employee_name FROM employees;
```

✔ Renames column output using AS for better readability.

🧩 Basic CASE Statements
🔹 Basic CASE for Sales Team
```
SELECT name,
CASE department
    WHEN 'sales' THEN 'Sales Team'
    ELSE 'Other'
END AS employee_name
FROM Employees;
```

📘 Explanation

Checks the department column

If department is Sales, assigns Sales Team

All others are grouped as Other

🔹 CASE with Multiple Conditions
```
SELECT name,
CASE Department
    WHEN 'sales' THEN 'Sales Team'
    WHEN 'marketing' THEN 'Marketing Team'
    ELSE 'Other'
END AS employee_name
FROM employees;
```
📘 Explanation

Matches multiple department values

Helps in categorizing employees based on department

🎯 CASE Based on Age
```
SELECT name,
CASE
    WHEN age < 30 THEN 'Young'
    WHEN age >= 30 AND age <= 40 THEN 'Mid-aged'
    ELSE 'Senior'
END AS employee_name
FROM employees;
```
📘 Explanation

Categorizes employees by age group

Useful for analytics and HR reporting

🔁 CASE as IF–ELSE Logic

```
SELECT name,
CASE
    WHEN age < 30 THEN
        CASE 
            WHEN Department = 'Sales' THEN 'Jr Sales'
            ELSE 'Junior'
        END
END AS employee_name
FROM employees;
```
📘 Explanation

Uses CASE inside another CASE

Acts like nested IF–ELSE logic

Assigns roles based on age + department

🪜 Nested CASE Statements
```
SELECT name,
CASE
    WHEN age < 30 THEN
        CASE
            WHEN Department = 'Sales' THEN 'Jr Sales'
            ELSE 'Junior'
        END
    WHEN age >= 30 AND age <= 40 THEN 'Mid-aged'
    ELSE 'Senior'
END AS employee_name
FROM employees;
```
📘 Explanation

Multiple decision layers

Useful for complex business logic

Commonly used in reporting dashboards

🚫 Handling NULL Values Using CASE
```
SELECT name,
CASE
    WHEN Department IS NULL THEN 'No Department Assigned'
    ELSE Department
END AS Department_Status
FROM Employees;
```
📘 Explanation

Replaces NULL values with meaningful text

Improves readability and avoids blank results

🗳️ CASE for Voting Eligibility
```
SELECT name,
CASE
    WHEN age >= 18 THEN 'Eligible to Vote'
    ELSE 'Not Eligible to Vote'
END AS Voting_Eligibility
FROM employees;
```
📘 Explanation

Simple conditional logic

Determines eligibility based on age

Real-world example of CASE usage

🎯 Purpose of This Script

This SQL file helps you learn:

Basic and advanced CASE statements

Nested CASE logic

Handling NULL values

Using CASE as IF–ELSE

Writing readable and business-friendly SQL queries

🧠 Best Use Cases of CASE

Data categorization

Conditional column values

Report generation

Business logic implementation

SQL interviews & practice

🤝 Contributing


📄 License

This project is open-source and free to use for learning and practice.

