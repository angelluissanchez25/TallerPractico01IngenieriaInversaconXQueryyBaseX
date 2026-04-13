for $libro in /biblioteca/libro
where $libro/@categoria = "programacion"
and number($libro/precio) > 30
order by $libro/titulo descending
return <resultado>Titulo: {data($libro/titulo)} - Precio: {data($libro/precio)}€</resultado>