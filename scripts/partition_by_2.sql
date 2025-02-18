select titulo, temporada, rating_imdb,
 row_number() over(partition by temporada order by rating_imdb desc) as ranking 
 from Episodios
 where serie_id = 2