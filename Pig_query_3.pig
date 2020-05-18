airlines = LOAD 'hdfs://localhost:54310/sqoop/airlinereviews' USING PigStorage (',') AS (id:chararray, airline_name:chararray, date:DateTime, type_traveller:chararray, cabin_flown:chararray, overall_rating:int, seat_comfort_rating:int, cabin_staff_rating:int, food_beverages_rating:int, inflight_entertainment_rating:int, ground_service_rating:int, wifi_connectivity_rating:int, value_money_rating:int, recommended:int);

filt = FILTER airlines BY type_traveller == 'FamilyLeisure';
a = group filt by airline_name;
b = foreach a generate group, AVG(filt. overall_rating);

STORE b INTO 'hdfs://localhost:54310/pig/query3.csv'; 
