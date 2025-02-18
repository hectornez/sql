with ordenSeries as (
select titulo, año_lanzamiento,
row_number() over(order by año_lanzamiento desc) as orden_lanzamiento
from Series
)
select * from ordenSeries
limit 3