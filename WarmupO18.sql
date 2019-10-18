SELECT  rental_rate
FROM film
WHERE rating = 'PG-13'
GROUP BY rental_rate
ORDER BY rental_rate DESC;    0.99, 2.99, 4.99

--Test Query to get the current rates

SELECT  title, rental_rate, rating,
CASE
   WHEN rental_rate = 0.99 THEN  0.10
   WHEN rental_rate = 2.99 THEN  1.00
   WHEN rental_rate = 4.99 THEN  2.99
ELSE 0
END AS discount
FROM film
WHERE rating = 'PG-13'
GROUP BY title, rental_rate, rating;

--I withheld the order by so that you can see everything working t various prices