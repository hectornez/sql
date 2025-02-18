select Series.genero,avg(media_imdb_indv) as media_total,count(Series.serie_id) as total_series
 from Series
join(select Episodios.serie_id, avg(Episodios.rating_imdb) as media_imdb_indv from Episodios
	group by Episodios.serie_id)
	Episodios on Series.serie_id = Episodios.serie_id
group by Series.genero
order by total_series desc
limit 3
