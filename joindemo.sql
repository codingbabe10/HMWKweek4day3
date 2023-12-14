--inner join

SELECT * from artist ;

SELECT * from favorite_song ;


-- left table (FROM clause)
-- right table (JOIN clause)

SELECT *
FROM artist 
INNER JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

SELECT *
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id= artist.artist_id

SELECT song_name, album
From favorite_song
WHERE artist_id = 2

-- Left JOIN
SELECT songname, album, artist_name, artist_id
-- we have to specify WHERE this column is coming from 
FROM Artist
LEFT JOIN favorite_song
ON favorite_song.artist_id= artist.artist_id


SELECT songname, album, artist_name, artist_id
from artist AS a
FULL JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

SELECT  favorite_song.artist_id
From artist AS a 
FULL JOIN favorite_song AS fs
ON favorite_song.artist_id = artist.artist_id

SELECT song_name, album, artist_name,, fs.artist_id
fro artist AS album
FULL JOIN favorite_song AS fs
ON fs.artist_id = a.artist.id



SELECT song_name, album, artist_name
From artist AS album
FULL JOIN favorite_song AS fs
ON fs.artist_id = a.artist_id
WHERE album like 'V%'
ORDER BY song_name DESC
