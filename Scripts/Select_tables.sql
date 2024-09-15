-- Название и продолжительность самого длительного трека
select	name, duration from song
where duration = (select max(duration) from song);

-- Название треков, продолжительность которых не менее 3,5 минут
select	name, duration from song
where duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name, yearofrelease from collection
where yearofrelease >= 2018 and yearofrelease <=2020;

-- Исполнители, чьё имя состоит из одного слова
select name from singer
where name not like '% %';

-- Название треков, которые содержат слово «мой» или «my»
select name from song
where (name like '%my%') or (name like '%мой%');

-- Количество исполнителей в каждом жанре
select g.name, count(s.name) from genreofmusic g 
left join genre_singer gs on g.genre_id = gs.genre_id 
left join singer s on gs.singer_id = s.singer_id 
group by g.name
order by count(s.name) desc;

-- Количество треков, вошедших в альбомы 1997–2000 годов
select a.name, count(s.name) from album a
left join song s on a.album_id = s.album_id
where a.yearofrelease >= 1997 and a.yearofrelease <= 2000
group by a.name;

-- Средняя продолжительность треков по каждому альбому
select a.name, avg(duration) from song s
left join album a on s.album_id = a.album_id 
group by a.name
order by avg(duration) desc;

-- Все исполнители, которые не выпустили альбомы в 2020 году
select s.name from singer s 
left join singer_album sa on s.singer_id = sa.singer_id 
left join album a on sa.album_id = a.album_id
where s.name in (select s.name from singer_album where a.yearofrelease != 2020);

-- Названия сборников, в которых присутствует конкретный исполнитель (Linkin Park)
select distinct c.name from collection c 
left join collections cs on c.collection_id = cs.collection_id 
left join song s on cs.song_id = s.song_id 
left join album a on s.album_id = a.album_id 
left join singer_album sa on a.album_id = sa.album_id
left join singer sg on sa.singer_id = sg.singer_id
where sg.name like 'Linkin Park';


