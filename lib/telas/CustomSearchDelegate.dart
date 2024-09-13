import 'package:flutter/material.dart';

class Customsearchdelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.done),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> lista = [];
    if (query.isNotEmpty) {
      lista = ["Seladora", "Envasadora", "Como ligar a maquina"].where((texto) {
        return texto.toLowerCase().startsWith(query.toLowerCase());
      }).toList();
      return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lista[index].toString()),
            onTap: () {
              close(context, lista[index]);
            }, 
          );
        },
      );
    } else {
      return Text("Nenhum resultado da sua pesqusa ");
    }
    return Text('Aguardando Pesquisa ');
  }
}
