import 'package:flutter/material.dart';
import 'package:mooviedb/pelicula.dart';


class DetallesPelicula extends StatelessWidget {
  final Pelicula pelicula;

  DetallesPelicula({required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelicula seleccionada'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Color.fromARGB(255, 29, 53, 73),
            child: Center(
              child: Image.asset(
                pelicula.imagenAsset,
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            color: Colors.lightBlue,
            child: Text(
              pelicula.sinopsis,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}





