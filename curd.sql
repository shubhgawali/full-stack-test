************************create***********************


SQL> create table employee (empid number(10),ename varchar2(10),sal number(10));

Table created.

SQL> desc employee;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 EMPID                                                                      NUMBER(10)
 ENAME                                                                      VARCHAR2(10)
 SAL                                                                        NUMBER(10)



**************************Insert***************************

SQL> insert into employee values(&eid,'&ename',&sal);
Enter value for eid: 101
Enter value for ename: harry
Enter value for sal: 30000
old   1: insert into employee values(&eid,'&ename',&sal)
new   1: insert into employee values(101,'harry',30000)

1 row created.

SQL> /
Enter value for eid: 102
Enter value for ename: Jhon
Enter value for sal: 20000
old   1: insert into employee values(&eid,'&ename',&sal)
new   1: insert into employee values(102,'Jhon',20000)

1 row created.

SQL> /
Enter value for eid: 103
Enter value for ename: alex
Enter value for sal: 16000
old   1: insert into employee values(&eid,'&ename',&sal)
new   1: insert into employee values(103,'alex',16000)

1 row created.

SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       101 harry           30000
       102 Jhon            20000
       103 alex            16000



**********************Update******************************


SQL> update employee set sal = 25000 where ename = 'Jhon';

1 row updated.

SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       101 harry           30000
       102 Jhon            25000
       103 alex            16000


**********************delete*******************************

SQL> delete from employee where ename = 'alex';

1 row deleted.

SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       101 harry           30000
       102 Jhon            25000
