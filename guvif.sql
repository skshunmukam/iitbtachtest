CREATE TABLE guvif (
  ID INT NOT NULL,
  FIRSTNAME VARCHAR(20) NULL,
  LASTNAME VARCHAR(20) NULL,
  EMAIL VARCHAR(45) NULL,
  DEPARTMENT VARCHAR(45) NULL,
  SALARY VARCHAR(45) NULL,
  JOINDATE VARCHAR(45) NULL
  );
  
  INSERT INTO guvif (ID,FIRSTNAME,LASTNAME,EMAIL,DEPARTMENT,SALARY,JOINDATE)
VALUES   (1,'Steven','King','SKING','Executive',24000,2003-06-17), 
	     (2,'Neena','Kochhar','NKOCHHAR','Executive',17000,2005-09-21),
	     (3,'Lex','De Haan','LDEHAAN','Executive',17000,2001-01-13), 
	     (4,'Alexander','Hunold','AHUNOLD','IT',9000,2006-01-03),
         (5,'Bruce','Ernst','BERNST','IT',6000,2007-05-21), 
         (6,'David','Austin','DAUSTIN','IT',4800,2005-06-25), 
         (7,'Valli','Pataballa','VPATABAL','IT',4800,2006-02-05), 
         (8,'Diana','Lorentz','DLORENTZ','IT',4200,2007-02-07), 
         (9,'Nancy','Greenberg','NGREENBE','Finance',12008,2002-08-17), 
         (10,'Daniel','Faviet','DFAVIET','Finance',9000,2002-08-16), 
         (11,'John','Chen','JCHEN','Finance',8200,2005-09-28), 
         (12,'Ismael','Sciarra','ISCIARRA','Finance',7700,2005-09-30), 
		 (13,'Jose Manuel','Urman','JMURMAN','Finance',7800,2006-03-07), 
         (14,'Luis','Popp','LPOPP','Finance',6900,2007-12-07), 
         (15,'Den','Raphaely','DRAPHEAL','Purchasing',11000,2002-12-07), 
         (16,'Alexander','Khoo','AKHOO','Purchasing',3100,2003-05-18), 
         (17,'Shelli','Baida','SBAIDA','Purchasing',2900,2005-12-24), 
         (18,'Sigal','Tobias','STOBIAS','Purchasing',2800,2005-07-24), 
         (19,'Guy','Himuro','GHIMURO','Purchasing',2600,2006-11-15), 
         (20,'Karen','Colmenares','KCOLMENA','Purchasing',2500,2007-08-10), 
         (21,'Matthew','Weiss','MWEISS','Shipping',8000,2004-07-18), 
         (22,'Adam','Fripp','AFRIPP','Shipping',8200,2005-04-10), 
         (23,'Payam','Kaufling','PKAUFLIN','Shipping',7900,2003-05-01), 
         (24,'Shanta','Vollman','SVOLLMAN','Shipping',6500,2005-10-10), 
         (25,'Kevin','Mourgos','KMOURGOS','Shipping',5800,2007-11-16), 
         (26,'Julia','Nayer','JNAYER','Shipping',3200,2005-07-16), 
         (27,'Irene','Mikkilineni','IMIKKILI','Shipping',2700,2006-09-28), 
         (28,'James','Landry','JLANDRY','Shipping',2400,2007-01-14), 
         (29,'Steven','Markle','SMARKLE','Shipping',2200,2008-03-08),
         (30,'Laura','Bissot','LBISSOT','Shipping',3300,2005-08-20), 
         (31,'Mozhe','Atkinson','MATKINSO','Shipping',2800,2005-10-30), 
         (32,'James','Marlow','JAMRLOW','Shipping',2500,2005-02-16), 
         (33,'TJ','Olson','TJOLSON','Shipping',2100,2007-04-10), 
         (34,'Jason','Mallin','JMALLIN','Shipping',3300,2004-06-14), 
         (35,'Michael','Rogers','MROGERS','Shipping',2900,2006-08-26), 
         (36,'Ki','Gee','KGEE','Shipping',2400,2007-12-12), 
         (37,'Hazel','Philtanker','HPHILTAN','Shipping',2200,2008-02-06), 
         (38,'Renske','Ladwig','RLADWIG','Shipping',3600,2003-07-14), 
         (39,'Stephen','Stiles','SSTILES','Shipping',3200,2005-10-26), 
         (40,'John','Seo','JSEO','Shipping',2700,2006-02-12), 
         (41,'Joshua','Patel','JPATEL','Shipping',2500,2006-04-06), 
         (42,'Trenna','Rajs','TRAJS','Shipping',3500,2003-10-17), 
         (43,'Curtis','Davies','CDAVIES','Shipping',3100,2005-01-29), 
         (44,'Randall','Matos','RMATOS','Shipping',2600,2006-03-15), 
         (45,'Peter','Vargas','PVARGAS','Shipping',2500,2006-07-09), 
         (46,'John','Russell','JRUSSEL','Sales',14000,2004-10-01),
         (47,'Karen','Partners','KPARTNER','Sales',13500,2005-01-05), 
         (48,'Alberto','Errazuriz','AERRAZUR','Sales',12000,2005-03-10), 
         (49,'Gerald','Cambrault','GCAMBRAU','Sales',11000,2007-10-15), 
         (50,'Eleni','Zlotkey','EZLOTKEY','Sales',10500,2008-01-29); 
         
         select FIRSTNAME as worker_name from guvif
         
         SELECT distinct DEPARTMENT from guvif;
         
         (SELECT * FROM guvif ORDER BY ID DESC LIMIT 5)ORDER BY ID ASC;
         
         select substring(FIRSTNAME,1,3) from guvif
         
         select instr(FIRSTNAME,'a'), FIRSTNAME FROM guvif;
         
         SELECT t.DEPARTMENT,t.FIRSTNAME,t.Salary from(SELECT max(SALARY) as TotalSalary,DEPARTMENT from guvif group by DEPARTMENT) as TempNew Inner Join guvif t on TempNew.DEPARTMENT=t.DEPARTMENT and TempNew.TotalSalary=t.SALARY;
         
         SELECT RTRIM(FIRSTNAME) FROM guvif;
         
         SELECT DISTINCT length(DEPARTMENT) FROM guvif;
         
         select * from guvif ORDER BY SALARY ASC limit 4,1;
         
         SELECT REPLACE(FIRSTNAME, 'a', 'A') FROM guvif;
         
         SELECT * FROM guvif ORDER BY FIRSTNAME ASC, DEPARTMENT DESC;
         
         SELECT FIRSTNAME, SALARY from guvif WHERE SALARY=(SELECT max(SALARY) from guvif);
         
         SELECT * FROM guvif WHERE FIRSTNAME NOT IN('Renske','shantha');
         
         SELECT * FROM guvif WHERE FIRSTNAME like '%h';
         
         SELECT * FROM guvif WHERE year(JOINDATE) = 2008 and month(JOINDATE)=2; 

		 SELECT DEPARTMENT, COUNT(*) FROM guvif GROUP BY DEPARTMENT HAVING COUNT(*) > 1;
         
         SELECT * FROM guvif WHERE MOD (ID, 2) <> 0;
         
         select * from guvif ORDER BY SALARY ASC limit 9,1;
         
         SELECT * FROM guvif ORDER BY ID ASC LIMIT 10;
         
         SELECT SALARY FROM guvif g1 WHERE 7 = (SELECT COUNT( DISTINCT ( g2.SALARY )) FROM guvif g2 WHERE g2.SALARY >= g1.SALARY);
         
         Select distinct W.ID, W.FIRSTNAME, W.SALARY from guvif W, guvif W1 where W.SALARY = W1.SALARY and W.ID != W1.ID;
         
         
         
         
         