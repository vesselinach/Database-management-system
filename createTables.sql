SET SCHEMA FN71840@

CREATE TABLE MYGUESTS ( 
EGN CHAR(10) NOT NULL, 
NAMEE VARCHAR(50) NOT NULL, 
AGE_VAL INT NOT NULL, 
PHONE_NUMBER CHAR(10),

CHECK (AGE_VAL > 0)
)@

CREATE TABLE MYREGISTRATIONS (
 ID_NUM INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1), 
 PAYMENT INT,
 A_DATE DATE NOT NULL, 
 DAYS INT NOT NULL,
 L_DATE DATE NOT NULL,
R_NUMBER INT, 
 GUEST_EGN CHAR(10) NOT NULL,
 RECEPTIONIST_ID CHAR(6) NOT NULL,
 
  CHECK (PAYMENT IN (0, 1, 2)), -- 0 - � ����, 1 - � �����, 2 - �� ������ ���
  CHECK (DAYS > 0)
 )@

CREATE TABLE MYMANAGER (
    ID_NUM CHAR(6) NOT NULL,
    NAMEE VARCHAR(50) NOT NULL ,
    SALARY DOUBLE NOT NULL CHECK (SALARY > 0),
    BONUS DOUBLE ,
    EMP_DATE DATE NOT NULL,
    PHONE_NUM CHAR(10),
    E_MAIL VARCHAR(30),
    
    CHECK (SALARY > 0),
    CHECK(BONUS > 0) 
    )@


CREATE TABLE MYRECEPTIONISTS (
    ID_NUM CHAR(6) NOT NULL,
    NAMEE VARCHAR(50) NOT NULL,
    SALARY DOUBLE NOT NULL,
    BONUS DOUBLE,
    EMP_DATE DATE NOT NULL,
    PHONE_NUM CHAR(10),
    E_MAIL VARCHAR(30),
    MANAGER_ID CHAR(6) NOT NULL,
    EDUCATION CHAR(1),
    
    CHECK(SALARY > 0),
    CHECK(BONUS > 0),
    CHECK (EDUCATION IN ('A', 'B', 'C')) -- 'A' - ������, 'B'- ������ ���������, 'C' - �����
    )@


CREATE TABLE MYATTENDANTS (
    ID_NUM CHAR(6) NOT NULL,
    NAMEE VARCHAR(50) NOT NULL,
    SALARY DOUBLE NOT NULL ,
    BONUS DOUBLE,
    EMP_DATE DATE NOT NULL,
    PHONE_NUM CHAR(10),
    E_MAIL VARCHAR(30),
    WORKED_HOURS INT NOT NULL ,
    MONEY_PER_HOUR DOUBLE NOT NULL,
    MANAGER_ID CHAR(6)NOT NULL,
    
    CHECK(SALARY > 0),
    CHECK(BONUS > 0),
    CHECK (WORKED_HOURS > 0),
  	CHECK (MONEY_PER_HOUR > 0)
    
    )@
    
    CREATE TABLE MYCOOKS (
    ID_NUM CHAR(6) NOT NULL,
    NAMEE VARCHAR(50)NOT NULL,
    SALARY DOUBLE NOT NULL,
    BONUS DOUBLE,
    EMP_DATE DATE NOT NULL,
    PHONE_NUM CHAR(10),
    E_MAIL VARCHAR(30),
    TYPE_OF_POSITION CHAR(10),
    MANAGER_ID CHAR(6) NOT NULL,
    
     CHECK(SALARY > 0),
     CHECK(BONUS > 0)
    )@
    


CREATE TABLE MYROOMS (
    R_NUMBER INT NOT NULL,
    PRICE DOUBLE NOT NULL,
    R_TYPE INT NOT NULL,
    ATTENDANT_ID CHAR(6) NOT NULL,
    
    CHECK (PRICE > 0),
    CHECK (R_TYPE IN (1, 2, 3))   -- 1 - ��������, 2 - ������, 3 - ����������
    )@
    
  CREATE TABLE MYRESTAURANT(
   ID_NUM CHAR(2) NOT NULL,
   NAMEE CHAR(15) NOT NULL,
   SALES CHAR(20),
   COOK_ID CHAR(6)NOT NULL,
   ATT_ID CHAR(6) NOT NULL
   
   
   )@
   
   
ALTER TABLE MYGUESTS ADD CONSTRAINT PK_GUEST PRIMARY KEY (EGN)@
ALTER TABLE MYREGISTRATIONS  ADD CONSTRAINT PK_REG PRIMARY KEY (ID_NUM)@
ALTER TABLE MYMANAGER ADD CONSTRAINT PK_MAN PRIMARY KEY (ID_NUM)@
ALTER TABLE MYRECEPTIONISTS ADD CONSTRAINT PK_REC PRIMARY KEY (ID_NUM)@
ALTER TABLE MYATTENDANTS ADD CONSTRAINT PK_ATT PRIMARY KEY (ID_NUM)@
ALTER TABLE MYCOOKS ADD CONSTRAINT PK_COOK PRIMARY KEY (ID_NUM)@
ALTER TABLE MYROOMS ADD CONSTRAINT PK_ROOMS PRIMARY KEY (R_NUMBER)@
ALTER TABLE MYRESTAURANT ADD CONSTRAINT PK_REST PRIMARY KEY (ID_NUM)@
  
ALTER TABLE MYATTENDANTS ADD CONSTRAINT FK_ATTENDANTS_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES MYMANAGER (ID_NUM)@
ALTER TABLE MYRECEPTIONISTS ADD CONSTRAINT FK_RECEPT_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES MYMANAGER (ID_NUM)@
ALTER TABLE MYCOOKS ADD CONSTRAINT FK_RECEPT_COOK FOREIGN KEY (MANAGER_ID) REFERENCES MYMANAGER (ID_NUM) @
ALTER TABLE MYROOMS ADD CONSTRAINT FK_ROOMS_ATT FOREIGN KEY (ATTENDANT_ID) REFERENCES MYATTENDANTS (ID_NUM) @
ALTER TABLE MYREGISTRATIONS ADD CONSTRAINT FK_REGISTRATIONS_ROOMS FOREIGN KEY (R_NUMBER) REFERENCES MYROOMS (R_NUMBER) @
ALTER TABLE MYREGISTRATIONS ADD CONSTRAINT FK_REGISTRATIONS_GUESTS FOREIGN KEY (GUEST_EGN) REFERENCES MYGUESTS (EGN) @
ALTER TABLE MYREGISTRATIONS ADD CONSTRAINT FK_REGISTRATIONS_RECEPTION FOREIGN KEY (RECEPTIONIST_ID) REFERENCES MYRECEPTIONISTS (ID_NUM)@
ALTER TABLE MYRESTAURANT ADD CONSTRAINT FK_REST_COOK FOREIGN KEY (COOK_ID) REFERENCES MYCOOKS (ID_NUM) @
ALTER TABLE MYRESTAURANT ADD CONSTRAINT FK_REST_ATT FOREIGN KEY (ATT_ID) REFERENCES MYATTENDANTS (ID_NUM)@