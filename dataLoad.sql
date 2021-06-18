SET SCHEMA FN71840@

INSERT INTO MYGUESTS VALUES ('9909100070', 'Ivan Ivanov', 22, '0887653498')@
INSERT INTO MYGUESTS VALUES ('9105120009', 'Simona Georgieva', 30, '0896754534')@
INSERT INTO MYGUESTS VALUES ('9101010065', 'John Calvin', 30, '0887653498')@
INSERT INTO MYGUESTS VALUES ('9909040088', 'Maria Nicolaeva', 22, '0887653498')@
INSERT INTO MYGUESTS VALUES ('9909100070', 'Lilly Trifanova', 22, '0887653498')@
INSERT INTO MYGUESTS VALUES ('8109104477', 'David Simeonov', 40, '0887653498')@
INSERT INTO MYGUESTS VALUES ('9309109080', 'Sara Johnson', 28, '0887653498')@
INSERT INTO MYGUESTS VALUES ('9409100070', 'Ivet Georgieva', 27, '0887653498')@
INSERT INTO MYGUESTS VALUES ('8109100070', 'Ivailo Kostadinov', 40, '0887653498')@
INSERT INTO MYGUESTS VALUES ('8109010087', 'Stefen Dimitrov', 40, '0887653498')@

INSERT INTO MYATTENDANTS VALUES ('ATT333','Kate Williams', 700, 100, '2019-01-01', '0878908090', 'k.wl@gmail.com','8',700,'MNG101')@
INSERT INTO MYATTENDANTS VALUES('ATT133','Daria Hristova', 700, 100, '2019-02-01', '0886458901', 'd.hr@gmail.com','8',700,'MNG102')@
INSERT INTO MYATTENDANTS VALUES('ATT233','Elena Pavlova', 700, 400, '2019-03-01', '0888567686', 'e.pl@gmail.com','8',700,'MNG103')@
INSERT INTO MYATTENDANTS VALUES('ATT433','Qna Mitova', 700, 300, '2019-03-01', '0878996677', 'q.mt@gmail.com','8',700,'MNG104')@


INSERT INTO MYCOOKS VALUES ('COO101','Sofia Borisova', 1000, 50, '2019-10-03', '0878790989', 's.b@gmail.com','assistant','MNG102')@
INSERT INTO MYCOOKS VALUES ('COO102','Ivan Manchev', 1500, 50, '2019-09-05', '0893456556', 'i.man@gmail.com', 'chef','MNG102')@
INSERT INTO MYCOOKS VALUES ('COO103','Viktor Angelov', 1550, 50, '2019-01-08', '0878090909', 'v.ang@gmail.com', 'chef','MNG103')@
INSERT INTO MYCOOKS VALUES ('COO104','Milena Chobanova', 1100, 50, '2019-11-01', '0897654512', 'v.ch@gmail.com', 'assistant', 'MNG104')@

INSERT INTO MYRECEPTIONISTS VALUES ('REC101','Tanya Hristova', 800, 110, '2020-01-07', '0873232312', 't.hr@gmail.com','MNG105', 'A')@
INSERT INTO MYRECEPTIONISTS VALUES ('REC102','Hristina Hristova', 830, 200, '2018-08-06', '0899121113', 'hr.hr@gmail.com','MNG101', 'B')@
INSERT INTO MYRECEPTIONISTS VALUES ('REC103','Kalin Spasov', 900, 300, '2017-07-06', '0878434244', 'k.spas@gmail.com','MNG105','B')@
INSERT INTO MYRECEPTIONISTS VALUES ('REC104','George Stefanov', 700, 100, '2019-06-03', '0887674532', 'g.steff@gmail.com','MNG102', 'C')@


INSERT INTO MYMANAGER VALUES ('MNG101','Gergana Dimitrova', 1900, 100, '2019-01-01', '0878908090', 'g.d@gmail.com')@
INSERT INTO MYMANAGER VALUES ('MNG102','Marina Kostova', 2000, 150, '2019-01-01', '0878908090', 'm.k@gmail.com')@
INSERT INTO MYMANAGER VALUES ('MNG103','Kostadin Kostadinov', 2300, 200, '2019-01-01', '0878908090', 'k.k@gmail.com')@
INSERT INTO MYMANAGER VALUES ('MNG104','Sally Johnson', 2200, 130, '2019-01-01', '0878908090', 's.j@gmail.com')@
INSERT INTO MYMANAGER VALUES ('MNG105','Grigor Krystev', 1500, 160, '2019-01-01', '0878908090', 'g.k@gmail.com')@


INSERT INTO MYREGISTRATIONS(PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES (1,'2020-12-09',3 ,'2020-12-12', 305, '9909100070', 'REC101' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2019-12-03', 2 ,'2020-12-05', 205, '9105120009',  'REC103' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2019-12-03', 2,'2020-12-05', 105, '9101010065',  'REC104' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2019-12-02', 7,'2020-12-09', 306, '9909040088',  'REC101' )@
INSERT INTO MYREGISTRATIONS(PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID)  
VALUES(1,'2020-12-07',7 ,'2020-12-09', 306, '9909100070',  'REC102' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2015-12-02',7 ,'2015-12-09', 306, '8109104477',  'REC101' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2016-12-02',7 ,'2016-12-09', 306, '9309109080',  'REC102' )@
INSERT INTO MYREGISTRATIONS (PAYMENT,A_DATE, DAYS,L_DATE, R_NUMBER, GUEST_EGN, RECEPTIONIST_ID) 
VALUES(1,'2016-12-02', 7,'2016-12-09', 306, '9409100070',  'REC104' )@


INSERT INTO MYROOMS VALUES (101,60, 1,'ATT333')@
INSERT INTO MYROOMS VALUES (102,60,1,'ATT433')@
INSERT INTO MYROOMS VALUES (103,60,1,'ATT133')@
INSERT INTO MYROOMS VALUES (104,60,1,'ATT233')@
INSERT INTO MYROOMS VALUES (105,60,1,'ATT333')@
INSERT INTO MYROOMS VALUES (106,60,1,'ATT433')@
INSERT INTO MYROOMS VALUES (201,80,2,'ATT133')@
INSERT INTO MYROOMS VALUES (202,80,2,'ATT133')@
INSERT INTO MYROOMS VALUES (203,80,2,'ATT433')@
INSERT INTO MYROOMS VALUES (204,80,2,'ATT433')@
INSERT INTO MYROOMS VALUES (205,80,2,'ATT233')@
INSERT INTO MYROOMS VALUES (206,80,2,'ATT233')@
INSERT INTO MYROOMS VALUES (301,100,3,'ATT333')@
INSERT INTO MYROOMS VALUES (302,100,3,'ATT433')@
INSERT INTO MYROOMS VALUES (303,100,3,'ATT333')@
INSERT INTO MYROOMS VALUES (304,100,3,'ATT133')@
INSERT INTO MYROOMS VALUES (305,100,3,'ATT133')@
INSERT INTO MYROOMS VALUES (306,100,3,'ATT333')@


INSERT INTO MYRESTAURANT VALUES ('01', 'Night club', 'Wine', 'COO101','ATT133')@
INSERT INTO MYRESTAURANT VALUES ('02', 'Restaurant', 'None', 'COO102','ATT333' )@
INSERT INTO MYRESTAURANT VALUES ('03', 'Cafeteria', 'None',  'COO103','ATT133')@




--DROP TABLE FN71840.MYRESTAURANTS@
--DROP TABLE FN71840.MYROOMS@
--DROP TABLE FN71840.MYREGISTRATIONS@
--DROP TABLE FN71840.MYRECEPTIONISTS@
--DROP TABLE FN71840.MYATTENDANTS@
--DROP TABLE FN71840.MYGUESTS@
--DROP TABLE FN71840.MYMANAGER@
--DROP TABLE FN71840.MYCOOKS@


