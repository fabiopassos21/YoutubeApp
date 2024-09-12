import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emalta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricao.dart';

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
  @override
  Widget build(BuildContext context) {
    Api api = Api();
    api.pesquisar("");
    List<Widget> telas = [
      inicio(),
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
            onPressed: () {
              print("Ação: WebCam");
            },
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {
              print("Ação: WebCam");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Ação: WebCam");
            },
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      body: Center(
        child: telas[indiceAtual],
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
