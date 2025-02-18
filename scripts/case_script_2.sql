select titulo,
case
	when genero = 'Drama' then 'dramatica'
    when genero = 'Comedia' then 'divertida'
    else 'otro'
    end as 'categoria de genero'

from Series
    