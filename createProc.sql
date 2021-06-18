SET SCHEMA FN71840@

-- 1 процедура с курсор и входни и изходни параметри;
CREATE procedure calculateBonusSalaryRandomNumProc(IN randomNum INTEGER, OUT res DOUBLE)
 RESULT SETS 1
 BEGIN
 DECLARE counter double;
	FOR v1 AS c1 CURSOR FOR SELECT id_num, salary, bonus FROM MYRECEPTIONISTS
		DO
		IF (ID_NUM = 'REC101') THEN 
			SET counter = salary + randomNum + bonus;
		ELSE
		SET counter = (salary + bonus) - randomNum;
		END IF;
	END FOR;
	SET res = counter;
END@

CALL FN71840.calculateBonusSalaryRandomNumProc(100,?)@


--2 процедура с прихващане на изключение;
CREATE PROCEDURE RAISE_ERROR( ID_Num char(2), OUT O_SQLSTATE CHAR(5), OUT O_SQLCODE INTEGER)
LANGUAGE SQL
SPECIFIC changeSalesProc
BEGIN
DECLARE SQLCODE INTEGER DEFAULT 0;
DECLARE SQLSTATE CHAR (5) DEFAULT '00000';
DECLARE EXIT HANDLER FOR SQLEXCEPTION SELECT SQLCODE, SQLSTATE INTO O_SQLCODE, O_SQLSTATE FROM SYSIBM.SYSDUMMY1; --ВСЯКАКЪВ ВИД EXCEPTION  ЩЕ БЪДАТ ПРИХВАНАТИ И КАТО СЕ ПРИХВАНАТ, ПРОЦЕДУРАТА ПРИКЛЮЧВА

UPDATE MYRESTAURANT
	SET sales = (CASE WHEN namee = 'Night club' THEN 'Champagne'
					  WHEN namee = 'Restaurant' THEN  'Salad Cesar'
else RAISE_ERROR('70001', 'Incorrect!') END); --СЪОБЩЕНИЕ ЗА ГРЕШКА

END@




--ВТОРА процедура с прихващане на изключение;
CREATE PROCEDURE handlingNotFound11(out res_payment INT,out res_recept_id char(6))
LANGUAGE SQL
BEGIN
DECLARE flag INTEGER DEFAULT 0;
DECLARE N INTEGER DEFAULT 0;
DECLARE v_id_num INT; 
DECLARE v_payment INT; 
DECLARE v_r_number INT; 
DECLARE v_receptionist_id char(6) DEFAULT ' '; 
DECLARE c1 CURSOR FOR select  ID_NUM, PAYMENT, R_NUMBER,RECEPTIONIST_ID from MYREGISTRATIONS;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1; 
OPEN c1;

WHILE(flag = 1) DO
FETCH c1 INTO v_id_num, v_payment, v_r_number,v_receptionist_id;
	IF (v_payment = 1 and v_receptionist_id = 'REC101' ) 
THEN  SET v_payment = 0;
	  SET v_receptionist_id = 'REC104' ;
   else
	 SET v_payment = 2;
	 SET v_receptionist_id = 'REC104';
END IF;
END WHILE;

set res_payment = v_payment;
set res_recept_id = v_receptionist_id;

CLOSE c1;
END@

CALL FN71840.handlingNotFound11(?,?)@



--3 процедура с курсор и while цикъл;
CREATE PROCEDURE changeSalaryOfCookProcedure(IN ID_VALUE ANCHOR MYCOOKS.ID_NUM, OUT new_salary DOUBLE)
LANGUAGE SQL
SPECIFIC changeSalaryOfCookProcedure
DYNAMIC RESULT SETS 1
BEGIN
DECLARE v_salary DOUBLE;
DECLARE v_name CHAR(50);
DECLARE v_TYPE_OF_POSITION CHAR(10) DEFAULT ' ';
DECLARE flag integer default 0;

DECLARE c1 CURSOR FOR SELECT NAMEE, SALARY, TYPE_OF_POSITION FROM MYCOOKS;
OPEN c1;
FETCH c1 INTO v_name, v_salary, v_TYPE_OF_POSITION ;
set flag = 0;
WHILE (flag = 1) DO 
 IF (v_TYPE_OF_POSITION = 'assistant' AND v_name = 'S%')
 	THEN SET v_salary = v_salary - 100;
 		 set flag = 1;
 	ELSE SET v_salary = v_salary + 100;
 		 set flag = 1;
  END IF;
END WHILE;
 set new_salary=v_salary;
CLOSE c1;
END@

CALL FN71840.changeSalaryOfCookProcedure('COO101', ?)@







