select  titulo, año_lanzamiento, genero,
row_number() over(partition by genero order by año_lanzamiento desc) as orden_lanzamiento
from Series
