SET SCHEMA FN71840@

--1 AFTER TRIGGER

SELECT * FROM MYRESTAURANT@
DROP TRIGGER AFTER_UPDATE_TRIG1@

CREATE TRIGGER AFTER_UPDATE_TRIG1
	AFTER UPDATE OF sales ON  MYRESTAURANT
	referencing OLD AS O NEW AS N
	FOR EACH ROW
		WHEN(O.ID_NUM != N.ID_NUM)
		UPDATE MYRESTAURANT 
		SET ATT_ID  = 'ATT433'@
		

UPDATE MYRESTAURANT 
	SET SALES = 'wINE'
	WHERE ID_NUM = '01'@ 


--2 A TRIGGER WITH A STORED PROCEDURE

SELECT * FROM FN71840.MYCOOKS@
 --DROP TRIGGER FN71840.COOKS_TRIG@

CREATE PROCEDURE dataFromCooks(IN v_id CHAR(6))
DYNAMIC RESULT SETS 1
P1: BEGIN
DECLARE c1 CURSOR WITH RETURN FOR SELECT * FROM MYCOOKS WHERE ID_NUM = v_id;
OPEN c1;
END P1@

CALL FN71840.dataFromCooks('COO101')@

CREATE TRIGGER COOKS_TRIG
	AFTER INSERT ON MYCOOKS
	REFERENCING NEW AS N
	FOR EACH ROW
	BEGIN ATOMIC
		UPDATE MYCOOKS
		SET TYPE_OF_POSITION = 'Chef';
		CALL FN71840.dataFromCooks('COO106');
		END@
		
 INSERT INTO MYCOOKS(ID_NUM,NAMEE,SALARY,BONUS,EMP_DATE,PHONE_NUM,E_MAIL,TYPE_OF_POSITION,MANAGER_ID)
 VALUES('COO106','Toni Bakalov', 1200, 100, '2020-01-04', '0889080866', 'toni.bak@gmail.com','assistant','MNG102')@
		


