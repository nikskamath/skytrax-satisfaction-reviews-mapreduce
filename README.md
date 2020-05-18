# skytrax-satisfaction-reviews-mapreduce

This project exposed me to using the various big data technologies to explore and visualise big data. The project involved performing a detailed analysis of customer reviews from various airlines were taken and analysed through the use of the Hadoop MapReduce technologies.

First, the data was extracted from Github of a sample of reviews scraped from an airline review website called 'Skytrax'. This set of data was then cleaned using the R Studio programmatically. The preprocessed data was then stored in a MySQL database, after which it was transferred onto HDFS using a tool called Sqoop. Pig and Hive was used to process the data using MapReduce through queries.

The processed data was then stored again in HDFS and then visualised again using the R Studio tool. 6 case studies were constructed to visualise and analyse the data, through which airlines can see insights on various factors which can contribute to customer satisfaction and consequent airline success.

Tools used:
1. R Studio
2. Oracle VM Virtualbox, which hosted the Ubuntu Linux 16.04 OS
3. Hadoop 2.9
4. MySQL
5. Pig
6. Hive

Dataset credit: ‘https://github.com/quankiquanki/skytrax-reviews-dataset’. This Github site was a part of the suggested public dataset sites of another Github page, having the URL ‘https://github.com/awesomedata/awesome-public-datasets’.
