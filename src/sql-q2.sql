/*
Author: Magdalena Grzmiel

Problem #2
List the distinct flight numbers of all flights from Seattle to Boston 
by Alaska Airlines Inc. on Mondays. 
Please use the flight_num column instead of fid. 
Name the output column flight_num.
*/

select distinct flight_num
  from Flights f
inner join Weekdays w on w.did= f.day_of_week_id
inner join Carriers c on c.cid= f.carrier_id
where day_of_week='Monday'
  and origin_city='Seattle WA' 
  and dest_city='Boston MA'
  and c.name='Alaska Airlines Inc.'
  and f.canceled=0;
 