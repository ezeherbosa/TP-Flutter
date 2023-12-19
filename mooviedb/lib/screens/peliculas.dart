import 'package:flutter/material.dart';
import 'package:mooviedb/pelicula.dart';
import 'package:mooviedb/screens/detalle_pelicula.dart';


class PeliculasScreen extends StatelessWidget {
  final List<Pelicula> peliculas = [
    Pelicula(titulo: 'Avatar', genero: 'Animación', imagenAsset: 'assets/images/Avatar.jpg', sinopsis: 'peliculonnn'),
    Pelicula(titulo: 'HomeAlone', genero: 'Comedia', imagenAsset: 'assets/images/HomeAlone.jpg', sinopsis: 'navidat'),
    Pelicula(titulo: 'Matrix', genero: 'Ciencia Fixion', imagenAsset: 'assets/images/Matrix.jpg', sinopsis: 'peliculonnn' ),

   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: peliculas.length,
        itemBuilder: (BuildContext context, int index) {
          Pelicula pelicula = peliculas[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetallesPelicula(pelicula: pelicula)),
              );
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                title: Text(pelicula.titulo),
                subtitle: Text(pelicula.genero),
                leading: Image.asset(
                  pelicula.imagenAsset,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                trailing: const Icon(Icons.emoji_symbols),
              ),
            ),
          );
        },
      ),
    );
  }
}






