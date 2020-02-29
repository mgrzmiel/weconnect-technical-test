/*
Author: Magdalena Grzmiel

Problem #1
Find the maximum price of tickets between Seattle and New York, NY 
(i.e. Seattle to NY or NY to Seattle) for each airline. 
Name the output columns carrier and max_price, in that order

*/

select c.name as carrier, 
       max(price) as max_price 
 from Flights f
-- inner join since we need carrier name
inner join Carriers c on c.cid= f.carrier_id
where canceled=0
  and ((origin_city='Seattle WA' and dest_city='New York NY')  
   or (origin_city='New York NY'  and dest_city='Seattle WA'))
group by c.name;
