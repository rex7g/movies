
import 'package:flutter/material.dart';
import 'package:movies/api/movie.dart';

class Pelicula extends StatelessWidget {

  Movie movie;

  Pelicula({required this.movie}): super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: ListView(
          

          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Image.network(movie.getImage()),
            Text(movie.overview)
          ],
        )
    );
  }


}