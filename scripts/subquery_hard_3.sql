select genero,media_imdb, titulo, año_lanzamiento, count(Series.genero) as total_series from Series
join(select Episodios.serie_id, avg(Episodios.rating_imdb) as media_imdb from Episodios
	group by Episodios.serie_id)
	Episodios on Series.serie_id = Episodios.serie_id
group  by genero, titulo, año_lanzamiento,media_imdb
order by media_imdb desc
