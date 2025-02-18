with lista_episodios as (
select serie_id, titulo , rating_imdb from Episodios
),

lista_series as ( select serie_id, titulo, genero from Series)

select * from lista_episodios
join lista_series on lista_episodios.serie_id = lista_series.serie_id