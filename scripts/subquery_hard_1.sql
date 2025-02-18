select Series.genero, Series.titulo, Series.año_lanzamiento, avg(Episodios.rating_imdb) as media
   from Series
join Episodios on Series.serie_id = Episodios.serie_id

where genero in (select genero from (select
											Series.genero,
                                            count(Series.serie_id) as total_series
                                            from Series
                                            group by Series.genero
                                            limit 3)as  top_3)
group by Series.serie_id
order by media desc