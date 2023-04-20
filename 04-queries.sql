-- 1. What are the albums available for sale?
SELECT singers.name, albums.title, albums.price, albums.stock, 
       albums.price * albums.stock AS value_per_stock
FROM albums
JOIN singers ON albums.singer_id = singers.singer_id
WHERE albums.stock > 0
ORDER BY value_per_stock DESC;

-- 2.What are the albums available for rent?
SELECT a.title, s.name AS artist_name, a.stock - COUNT(t.transaction_id) AS available_for_rent
FROM albums a
JOIN singers s ON a.singer_id = s.singer_id
LEFT JOIN transactions t ON a.album_id = t.album_id AND t.type = 'Rental' AND CURDATE() BETWEEN t.start_date AND t.end_date
WHERE a.price IS NOT NULL
GROUP BY a.album_id
HAVING available_for_rent > 0
ORDER BY available_for_rent ASC;

-- 3.How many albums are in stock of the artist "Beyonce"?
SELECT s.name as singer_name, COUNT(*) as total_available_albums, SUM(a.price * a.stock) as total_revenue 
FROM albums a 
INNER JOIN singers s ON a.singer_id = s.singer_id 
WHERE s.name = 'Beyonce' AND a.stock > 0;

-- 4.How many albums has the customer purchased with the ID X?
SELECT c.name as customer_name, a.title as album_title, s.name as singer_name, a.price as album_price 
FROM transactions t 
INNER JOIN albums a ON t.album_id = a.album_id 
INNER JOIN singers s ON a.singer_id = s.singer_id
INNER JOIN customers c ON t.customer_id = c.customer_id 
WHERE t.customer_id = 1 AND t.type = 'Purchase';

-- 5.How many albums are in stock in total?
SELECT SUM(stock) as song_stock, SUM(stock * price) as total_money 
FROM albums 
WHERE price IS NOT NULL;

-- 6.Which customers have rented a specific album?
SELECT c.name as customer_name, a.title as album_title
FROM transactions t
INNER JOIN customers c ON t.customer_id = c.customer_id
INNER JOIN albums a ON t.album_id = a.album_id
WHERE a.title = '+';

-- 7.What are the most popular albums?
SELECT a.title as album_title, s.name as singer_name, COUNT(*) as total_rentals 
FROM transactions t 
INNER JOIN albums a ON t.album_id = a.album_id 
INNER JOIN singers s ON a.singer_id = s.singer_id 
WHERE t.type = 'Rental' 
GROUP BY a.album_id 
ORDER BY total_rentals DESC 
LIMIT 1;

