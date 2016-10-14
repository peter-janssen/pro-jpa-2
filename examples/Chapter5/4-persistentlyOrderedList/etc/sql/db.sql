DROP TABLE PRINTJOB;
DROP TABLE PRINTQUEUE;
CREATE TABLE PRINTJOB (ID INTEGER, QUEUE_NAME VARCHAR(255), PRINT_ORDER INTEGER, PRIMARY KEY (ID));
CREATE TABLE PRINTQUEUE (NAME VARCHAR(255), PRIMARY KEY (NAME));
ALTER TABLE PRINTJOB ADD CONSTRAINT JOB_QUEUE FOREIGN KEY (QUEUE_NAME) REFERENCES PRINTQUEUE (NAME);