with episodio as (
select serie_id, min(fecha_estreno) as primer_capitulo from Episodios
group by serie_id
),
serie as (
select titulo , serie_id from Series
)
select episodio.primer_capitulo, serie.titulo from episodio 
join serie on serie.serie_id = episodio.serie_id