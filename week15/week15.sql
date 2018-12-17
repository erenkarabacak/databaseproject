use movie_db;

alter table countries drop primary key;
alter table directors drop primary key;
alter table movies drop primary key;
alter table stars drop primary key;
alter table movie_stars drop primary key;
alter table movie_directors drop primary key;
alter table languages drop primary key;
alter table genres drop primary key;
alter table producer_countries drop primary key;


load data local infile '/home/eren/Desktop/file/movies.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/directors.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/stars.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/countries.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/languages.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/genres.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/movie_directors.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/movies.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/movie_stars.csv' into table movies fields terminated by ';';
load data local infile '/home/eren/Desktop/file/producer_countries.csv' into table movies fields terminated by ';';




alter table movies add primary key (movie_id);
alter table movies add primary key (director_id);
alter table movies add primary key (star_id);
alter table movies add primary key (country_id);
alter table movies add primary key (movie_id,language_name);
alter table movies add primary key (movie_id,genre_name);
alter table movies add primary key (movie_id,star_id);
alter table movies add primary key (movie_id,director_id);
alter table movies add primary key (movie_id,country_id);


alter table directors add constraint fk_directors_countries1 foreign key (country_id) references countries(country_id);
alter table stars add constraint fk_stars_countries1 foreign key (country_id) references countries(country_id);
alter table languages add constraint fk_languages_movies1 foreign key (movie_id) references movies(movie_id);
alter table genres add constraint fk_genres_movies1 foreign key (movie_id) references movies(movie_id);
alter table movie_stars add constraint fk_movie_stars_movies1 foreign key (movie_id) references movies(movie_id);
alter table movie_stars add constraint fk_movie_stars_stars1 foreign key (star_id) references stars(star_id);
alter table movie_directors add constraint fk_movie_directors_movies1 foreign key (movie_id) references movies(movie_id);
alter table movie_directors add constraint fk_movie_directors_directors1 foreign key (director_id) references directors(director_id);
alter table producer_countries add constraint fk_producer_countries_movies1 foreign key (country_id) references countries(country_id);
alter table producer_countries add constraint fk_producer_countries_countries1 foreign key (movie_id) references movies(movie_id);

CREATE INDEX `fk_genres_movies1_idx` ON `genres` (`movie_id` ASC);
CREATE INDEX `fk_movie_stars_movies1_idx` ON `movie_stars` (`movie_id` ASC);
CREATE INDEX `fk_movie_stars_stars1_idx` ON `movie_stars` (`star_id` ASC);