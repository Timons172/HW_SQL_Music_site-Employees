-- Добавление исполнителей
insert into singer (name)
values 
	('Linkin Park'),
	('Korn'),
	('Каста'),
	('Шура');

-- Добавление жанров
insert into genreofmusic (name)
values 
	('Rock'),
	('Рэп'),
	('Попса');

-- Добавление альбомов
insert into album (name, yearofrelease)
values 
	('Hybrid Theory', 2000),
	('Follow The Leader', 1998),
	('Быль в глаза', 2008),
	('Shura', 1997);

--Добавление треков
insert into song (name, duration, album_id)
values 
	('In the end', 216, 1),
	('Crawling', 208, 1),
	('Freak on a leash', 255, 2),
	('Got the life', 225, 2),
	('Нормально все', 209, 3),
	('Радиосигналы', 227, 3),
	('Дон', 285, 4),
	('Отшумели летние дожди', 256, 4),
	('Reclaim my place', 272, 2);

-- Добавление сборников
insert into collection (name, yearofrelease)
values 
	('Hybrid Theory 20th Anniversary Edition', 2020),
	('Korn. Greatest Hits Vol.1', 2004),
	('Каста. Лучшие песни', 2014),
	('This is Шура', 2024);

--Добавление связей Жанр-Исполнитель
insert into genre_singer (genre_id, singer_id)
values 
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4);

--Добавление связей Исполнитель-Альбом
insert into singer_album (singer_id, album_id)
values 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4);

--Добавление связей Трек-Сборник
insert into collections (song_id, collection_id)
values 
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 4),
	(8, 4);