INSERT OVERWRITE DIRECTORY  '/hive/hiveoutput/hivetask3' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
select count(recommended),airline_name from airlines where recommended =1 group by airline_name;

INSERT OVERWRITE DIRECTORY  '/hive/hiveoutput/hivetask1' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE select avg(seat_comfort_rating),avg(food_beverages_rating),avg(inflight_entertainment_rating),avg(wifi_connectivity_rating), airline_name from airlines group by airline_name;

INSERT OVERWRITE DIRECTORY  '/hive/hiveoutput/hivetask2' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
select avg(seat_comfort_rating),avg(food_beverages_rating), airline_name from airlines group by airline_name;


