SET SCHEMA FN71840@

--1 �������� �������
CREATE FUNCTION GET_SALES_RESTAURANT_FUNC(VAL_ID CHAR(6))
    RETURNS CHAR(20)
    RETURN
    	SELECT SALES
    	FROM MYRESTAURANT
    	WHERE ID_NUM = VAL_ID@
   
   --CALL FUNCTION 	
    VALUES FN71840.GET_SALES_RESTAURANT_FUNC('01')@
    
    SELECT FN71840.GET_SALES_RESTAURANT_FUNC(ID_NUM) AS IDENTIFICATION
	FROM MYRESTAURANT@
    
    
 --2 �������� �������
CREATE FUNCTION ATTENDANTS_FUNC1(VAL_ID CHAR(6))
 RETURNS TABLE (V_NAMEE CHAR(50), V_PHONE_NUM CHAR(10), V_E_MAIL VARCHAR(30))
 RETURN 
 	SELECT NAMEE, PHONE_NUM, E_MAIL
 	FROM MYATTENDANTS
	WHERE ID_NUM = VAL_ID@
	
SELECT *
FROM TABLE (FN71840.ATTENDANTS_FUNC1('ATT333')) V@
	
    	
   	