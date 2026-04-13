for $autor in distinct-values(/biblioteca/libro/autor)
let $libros_del_autor := /biblioteca/libro[autor = $autor]
where count($libros_del_autor) > 1
return <resultado>{$autor} - Total: {count($libros_del_autor)} Libros
</resultado>