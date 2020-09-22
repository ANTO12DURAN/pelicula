import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:pelicula/src/models/pelicula_model.dart';

class PeliculasProvider {
  String _apikey = '1865f43a0549ca50d341dd9ab8b29f49';
  String _url = 'api.themoviedb.org';
  String _lenguage = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    //devuelve un future
    //genera el url... hae la peticion a ese https
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _lenguage,
    });

    final resp = await http.get(url);
    //Data del pelicula_model
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

//me retorna la lista de peliculas que tenemos en pelicula_model
    return peliculas.items;
  }
}
