CREATE TABLE IF NOT EXISTS USER_STORY2
(CUSTOMER_ID INT,
FIRST_NAME STRING,
LAST_NAME STRING,
CITY STRING,
EMAIL STRING,
AVERAGE_TRANSACTION_AMOUNT BIGINT,
FREQUENCY_OF_TRANSACTION INT,
GROUPS INT 
) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "\""
)
LOCATION 'hdfs://centos7-1.0102wnbqrtjuzfcm5j10ce4rjb.bx.internal.cloudapp.net:8020/dev/final/user_story2' 
tblproperties("skip.header.line.count"="1"); 