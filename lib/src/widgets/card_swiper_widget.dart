import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> peliculas;
  CardSwiper({@required this.peliculas}); //cnstructor inicializamos peliculas
  //@required manda peliculas o no funciona!
  @override
  Widget build(BuildContext context) {
//referencia alto ancho segun el dispositivo
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0), //espacio arriba

      child: Swiper(
        //tarjetas
        layout: SwiperLayout.STACK,
        //dimensiones
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            //borde redondeado
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit
                  .cover, //el fit para que se adapte a las dimensiones que tiene
            ),
          );
        },
        itemCount: peliculas.length, //cantidad de swiper
        //pagination: new SwiperPagination(), //tres punticos
        //  control: new SwiperControl(), // < > de las esquinas
      ),
    );
  }
}
