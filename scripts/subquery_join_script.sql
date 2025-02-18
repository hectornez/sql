select Series.titulo, Episodios.media   from Series
join (select serie_id, avg(rating_imdb) as media 
    from Episodios 
    group by serie_id 
    having media > 8)
    Episodios on Series.serie_id = Episodios.serie_id
order by  media desc

