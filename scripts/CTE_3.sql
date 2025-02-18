with numero_de_series as (
select serie_id, genero, año_lanzamiento  from Series
where genero in ('Ciencia ficcion', 'Drama', 'Drama historico')
order  by año_lanzamiento
)



select año_lanzamiento,genero, count(año_lanzamiento),
 row_number() over(order by año_lanzamiento) as orden_lanzamiento from numero_de_series 
group by año_lanzamiento, genero