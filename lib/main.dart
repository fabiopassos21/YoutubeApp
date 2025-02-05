import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';
import 'package:youtube/telas/CustomSearchDelegate.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emalta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricao.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indiceAtual = 0;
  String? resultado = "";
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(resultado),
      emalta(),
      inscricao(),
      biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text('Youtube'),
        actions: [
          IconButton(
            onPressed: () async {
              String? res = await showSearch(
                  context: context, delegate: Customsearchdelegate());
              setState(() {
                resultado = res;
              });
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: telas[indiceAtual],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indiceAtual,
          type: BottomNavigationBarType.shifting,
          onTap: (indice) {
            setState(() {
              indiceAtual = indice;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: (Colors.black),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.whatshot),
                backgroundColor: Colors.amber,
                label: "Em Alta"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                backgroundColor: Colors.red,
                label: "Inscrições"),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder),
                backgroundColor: Colors.grey,
                label: "Biblioteca"),
          ]),
    );
  }
}
