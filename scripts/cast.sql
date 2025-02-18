select titulo, año_lanzamiento from Series
where cast(año_lanzamiento as char) < '2025'