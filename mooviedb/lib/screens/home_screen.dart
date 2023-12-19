import 'package:flutter/material.dart';
import 'package:mooviedb/screens/peliculas.dart'; 


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 53, 73),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 100),
          Container(
            child: FadeInImage(
              placeholder: AssetImage('assets/images/dag.jpg'),
              image: NetworkImage(
                  'https://media.discordapp.net/attachments/1156787275187884074/1185104592371982346/pngwing.com_4.png?ex=658e65a9&is=657bf0a9&hm=0de1e4d4cde09965afa64a766611e3edb971a3b9454c140983c4b1814e744c7b&=&format=webp&quality=lossless&width=473&height=473'),
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PeliculasScreen()),
              );
            },
            child: Text('Ir a Películas'),
          ),
         
         

        
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Películas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PeliculasScreen()),
                );
              },
            ),
            



          ],
        ),
      ),
    );
  }
}


