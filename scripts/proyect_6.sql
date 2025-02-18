with objetivo as (
select serie_id,
 count(episodio_id) as total_episodios,
 avg(rating_imdb) as media
  from Episodios
group by serie_id
order  by media
)
select Series.titulo, objetivo.total_episodios, objetivo.media from objetivo
join Series on Series.serie_id = objetivo.serie_id 
order by media desc, total_episodios