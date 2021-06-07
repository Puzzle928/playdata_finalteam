### playdata_finalteam : 강정현(PM), 박철희, 부석민, 윤정화, 이재선
#### mission : Create 5 SQL Quizzes
- Quiz 1 : 아래의 ERD를 보고 Table을 생성하시오.<br>
<br> <p align="center"><a href="https://ibb.co/nrsnYQ3"><img src="https://i.ibb.co/dB0LVkb/ERD.png" alt="ERD" border="0"></a></p>



<h3>Quiz 1 ANSWER</h3>
<details>

```SQL
DROP TABLE AGENTS CASCADE CONSTRAINTS;
CREATE TABLE AGENTS(	
    AGENT_CODE CHAR(6) not null primary key, 
	AGENT_NAME CHAR(40), 
	WORKING_AREA CHAR(35) 
	);

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER(
    CUST_CODE VARCHAR2(6) NOT NULL PRIMARY KEY, 
	CUST_NAME VARCHAR2(40) NOT NULL, 
	CUST_CITY CHAR(35), 
	WORKING_AREA VARCHAR(20), 
	AGENT_CODE CHAR(6) NOT NULL REFERENCES AGENTS
    );   

DROP TABLE ORDERS CASCADE CONSTRAINTS;
CREATE TABLE ORDERS(
    ORD_NUM NUMBER(6,0) NOT NULL PRIMARY KEY, 
	ORD_AMOUNT NUMBER(12,2) NOT NULL, 
	ORD_DATE DATE NOT NULL, 
	CUST_CODE VARCHAR2(6) NOT NULL REFERENCES CUSTOMER, 
	AGENT_CODE CHAR(6) NOT NULL REFERENCES AGENTS 
    );
  
```

</details>


- quiz 2 <br>
- quiz 3 <br>
- quiz 4 <br>
- quiz 5 


s
