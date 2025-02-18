select titulo, año_lanzamiento,
case
	when año_lanzamiento >=2017 then 'mierda woke'
    when año_lanzamiento between 1990 and 2016 then 'buena cosecha'
    else 'antigua'
    end as categoria

from Series    