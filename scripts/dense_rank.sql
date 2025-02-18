select titulo, temporada, rating_imdb,
 dense_rank() over(order by rating_imdb desc) as ranking 
 from Episodios
 where serie_id = 2