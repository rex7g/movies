
import 'package:flutter/material.dart';
import 'package:movies/api/movie.dart';
import 'package:movies/ui/pelicula.dart';

class CajaPelicula extends StatelessWidget {

  Movie peli;

  CajaPelicula({required this.peli});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.peli.title),
      subtitle: Text(this.peli.voteAverage.toString() + " (" + this.peli.voteCount.toString() + ")"),
      trailing: Image.network(this.peli.getImage()),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:
            (context) => Pelicula (movie: this.peli)));
      },
    );
  }

}