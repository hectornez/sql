select titulo,rating_imdb,
	rank() over(order by rating_imdb) as ranking
from Episodios