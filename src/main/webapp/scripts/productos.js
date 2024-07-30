function mostrar(card){
    console.log(card.id);
    $('#prodimg1').attr('src',"img/productos/"+mapa.get(parseInt(card.id)).imgpath1);
    $('#prodimg2').attr('src',"img/productos/"+mapa.get(parseInt(card.id)).imgpath2);
    $('#prodimg3').attr('src',"img/productos/"+mapa.get(parseInt(card.id)).imgpath3);
    $('#nombre').html(mapa.get(parseInt(card.id)).nombre);
    $('#codigo').html("#"+mapa.get(parseInt(card.id)).codigo);
    $('#precio').html("Precio: $" + mapa.get(parseInt(card.id)).precio);
    $('#marca').html(mapa.get(parseInt(card.id)).marca);
    $('#peso').html("Peso: " + mapa.get(parseInt(card.id)).peso);
    $('#descripcion').html(mapa.get(parseInt(card.id)).descripcion);
    $('#detalles').modal('show')
}