

				#################################### SQL Project ###########################################
  
  # Name: Manuj Kumar Joshi
             




drop database innomatics;

create database innomatics;

use innomatics;


									                     ####### Worker #######

create table worker
	(worker_id char(5),
     first_name varchar(20),
	last_name varchar(20),
    salary bigint,
    joining_date datetime(2),
    department varchar(20),
    primary key(worker_id)
    );
    
    
    
insert into worker values 
	('001','Monika','Arora',100000,'2014-02-20 09:00:00','HR'),
    ('002', 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
    ('003', 'Vishal' ,'Singhal', 300000, '2014-02-20 09:00:00' ,'HR'),
    ('004', 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
    ('005', 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
    ('006', 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
	('007', 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
    ('008', 'Geetika', 'Chauhan' ,90000 ,'2014-04-11 09:00:00', 'Admin');

    
                                                   ######### Title #############
    
create table title(worker_ref_id int, worker_title varchar(20),effected_from datetime(2),primary key (worker_ref_id));
    
insert into title values
		(1 ,'Manager', '2016-02-20 00:00:00'),
        (2, 'Executive', '2016-06-11 00:00:00'),
		(8, 'Executive', '2016-06-11 00:00:00'),
		(5, 'Manager', '2016-06-11 00:00:00'),
		(4, 'Asst. Manager', '2016-06-11 00:00:00'),
		(7, 'Executive', '2016-06-11 00:00:00'),
		(6, 'Lead', '2016-06-11 00:00:00'),
		(3, 'Lead', '2016-06-11 00:00:00');
         
													####### Bonus ##########
    
    
create table bonus(worker_ref_id int,bonus_date datetime(2),bonus_amount bigint);

insert into bonus values
	(1, '2016-02-20 00:00:00', 5000),
    (2,'2016-06-11 00:00:00', 3000),
    (3, '2016-02-20 00:00:00', 4000),
	(1, '2016-02-20 00:00:00' ,4500),
    (2, '2016-06-11 00:00:00' ,3500);
    
    select * from bonus;
    
  
   
    
									       ############## Questions ########################
                                           
                                           
                                           
select * from worker;  ######## just checking table


    
# Q-1: Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

      select first_name as worker_name from worker;

# Q-2: Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

	  select upper(first_name) from worker;

# Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 
	  select distinct department from worker;
      
# Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.

	  select substring(first_name,1,3) from worker;
      
# Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

      select position('a' in first_name) from worker where first_name = 'Amitabh';

# Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

      select rtrim(first_name) from worker;

# Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.

	  select ltrim(department) from worker;

# Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length

	  select distinct department, length(department) as length from worker; 
      
# Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

	  select replace(first_name,'a','A') from worker;
      
# Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME 
#       from Worker table into a single column COMPLETE_NAME. A space char should separate them.

	  select concat(first_name,' ',last_name) as complete_name from worker;  
      
# Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

	  select * from worker order by first_name ;
      
# Q-12. Write an SQL query to print all Worker details from the Worker      
#       table order by FIRST_NAME Ascending and DEPARTMENT Descending.

	  select * from worker order by first_name asc, department desc;
      
# Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table

      select  * from worker where first_name in ('Vipul','Satish');
      
# Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.     
      
      select * from worker where first_name not in ('Vipul','Satish');
      
# Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
      
      select * from worker where department = 'Admin';
      
# Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
      
      select * from worker where first_name like 'a%' and first_name in ( select lower(first_name) from worker);     
      
# Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

      select * from worker where first_name like '%a' and first_name in ( select lower(first_name) from worker);   
      
# Q-18. Write an SQL query to print details of the Workers whose
#       FIRST_NAME ends with ‘h’ and contains six alphabets.

      select * from worker where first_name like '_____h';
      
# Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000

	  select * from worker where salary between 100000 and 500000;
      
# Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.

	  select * from worker where joining_date = '2014-02-20 09:00:00.00';
      
# Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.

	  select count(worker_id) from worker where department = 'Admin';
      
# Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

      select first_name,last_name from worker where (salary >=50000 and salary <= 100000);
      
# Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
      
      select count(worker_id),department from worker group by department order by count(worker_id) desc;
      
# Q-24. Write an SQL query to print details of the Workers who are also Managers.

      select * from worker as p1
      inner join title t1
      on p1.worker_id=t1.worker_ref_id where worker_title = 'Manager';
      
# Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

	   select
       salary, COUNT(salary)
	   from
       worker
	   group by salary
       having COUNT(salary) > 1;

       SELECT 
       department, COUNT(department)
       FROM
       worker
       GROUP BY department
       HAVING COUNT(department) > 1;
 
       SELECT 
	   joining_date, COUNT(joining_date)
       FROM
	   worker
       GROUP BY joining_date
       HAVING COUNT(joining_date) > 1;
       
# Q-26. Write an SQL query to show only odd rows from a table.
       
       select * from worker where worker_id%2!=0;
       
# Q-27. Write an SQL query to show only even rows from a table.

	   select * from worker where worker_id%2=0;
       
# Q-28. Write an SQL query to clone a new table from another table.

	# -- Shallow clone -- : Shallow cloning is mostly used to create a copy of an existing table data structure 
    #                 and column attributes without the data being copied. This will only create an empty table 
    #                 base on the structure of the original table.
    
                       create table worker_clone_1 like worker;
                       
    # -- Deep clone-- : Deep cloning is quite different from Simple Cloning and similar to 
    #              Shallow cloning but with data, and as its name implies it creates a deep copy of the original table.
    
                       create table worker_clone_2 like worker;
                       insert into worker_clone_2 select * from worker;
                       
# Q-29. Write an SQL query to fetch intersecting records of two tables.

	     select * from worker as w join title as t on w.worker_id=t.worker_ref_id;		
		 
# Q-30. Write an SQL query to show records from one table that another table does not have.

		 select * from worker as w left join bonus as b on w.worker_id=b.worker_ref_id;
            
# Q-31. Write an SQL query to show the current date and time.

		select current_date as today_time,current_time as time_now;
        
# Q-32. Write an SQL query to show the top n (say 10) records of a table.

		select * from worker order by worker_id limit 10;
        
# Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
            
		select distinct salary from worker order by salary desc limit 4,1;    # limit n-1,1
            
# Q-34. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
            
		SELECT salary FROM worker w1 WHERE 4 = ( SELECT COUNT(DISTINCT salary) FROM worker w2 WHERE w2.salary > w1.salary);
	
# Q-35. Write an SQL query to fetch the list of employees with the same salary.

	    select * from worker where salary in (select salary from worker group by salary having count(salary)>1);
        
# Q-36. Write an SQL query to show the second highest salary from a table.

		select salary from worker where salary < ( select max(salary) from worker) limit 1;
            
# Q-37. Write an SQL query to show one row twice in results from a table.

		select * from worker w join worker t on w.worker_id=t.worker_id;

# Q-38. Write an SQL query to fetch intersecting records of two tables.		inner join / intersection

		select * from worker w inner join title t on w.worker_id=t.worker_ref_id; 
        
# Q-39. Write an SQL query to fetch the first 50% records from a table.
        
        select * from worker where worker_id <= ( select count(worker_id)/2 from worker); 

# Q-40. Write an SQL query to fetch the departments that have less than five people in it. 

		select department,count(worker_id) from worker group by department having count(worker_id) < 5;

# Q-41. Write an SQL query to show all departments along with the number of people in there. 

		select department,count(worker_id) as no_of_people from worker group by department;

# Q-42. Write an SQL query to show the last record from a table. 

		select * from worker order by worker_id desc limit 1;

# Q-43. Write an SQL query to fetch the first row of a table. 
		
		select * from worker limit 1;

# Q-44. Write an SQL query to fetch the last five records from a table. 

		select * from worker order by worker_id desc limit 5;

# Q-45. Write an SQL query to print the name of employees having the highest salary in each department. 

		select first_name,salary,department from worker where salary in ( select max(salary) from worker group by department);

# Q-46. Write an SQL query to fetch three max salaries from a table. 

		select distinct(salary) from worker order by salary desc limit 3;

# Q-47. Write an SQL query to fetch three min salaries from a table.

		select distinct(salary) from worker order by salary limit 3;

# Q-48. Write an SQL query to fetch nth max salaries from a table. 

		select distinct(salary) from worker order by salary desc;
        
# Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them. 

		select department,sum(salary) from worker group by department;
        
# Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.

		select first_name from worker where salary in (select max(salary) from worker);

		
        
        
                     ############################ Thank you  ###########################################
