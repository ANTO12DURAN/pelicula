import 'package:flutter/material.dart';
import 'package:pelicula/src/providers/peliculas_provider.dart';

import 'package:pelicula/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cines'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              _swiperTarjeta(),
            ],
          ),
        ));
  }

//construye imagenes desde la direccion web indicada
  Widget _swiperTarjeta() {
    final peliculasProvider = new PeliculasProvider(); //creo objeto de la clase
    //llamo el metodo
    peliculasProvider.getEnCines();
    return CardSwiper(peliculas: [1, 2, 3, 4, 5]);
  }
}
