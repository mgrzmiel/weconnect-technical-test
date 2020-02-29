/*
Author: Magdalena Grzmiel

Problem #3
List all cities that cannot be reached from Seattle through a direct flight
nor with one stop (i.e., with any two flights that go through an intermediate city). 
Name the output column city. Order the output ascending by city.
*/

WITH reach_from_seattle AS (
    select distinct origin_city, 
           dest_city, 
           day_of_week_id, 
           month_id 
      from Flights
     where origin_city='Seattle WA'
)

select distinct dest_city as city
  from Flights
 where dest_city not in (
            select 'Seattle WA'
        union
            select distinct dest_city 
              from reach_from_seattle
        union
            select distinct f1.dest_city
              from reach_from_seattle as f
         left join (
                select distinct origin_city, 
                       dest_city, 
                       day_of_week_id, 
                       month_id
                  from Flights
                 where dest_city not in (select distinct dest_city 
                                           from reach_from_seattle)) f1 
                                           on f.dest_city=f1.origin_city
                                          and f.day_of_week_id=f1.day_of_week_id 
                                          and f.month_id=f1.month_id)
order by dest_city asc;