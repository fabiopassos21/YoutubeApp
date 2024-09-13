import 'package:flutter/material.dart';

class Customsearchdelegate extends SearchDelegate <String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return [
        IconButton(onPressed: (){



        }, icon: Icon(Icons.clear),
        ),
          IconButton(onPressed: (){
                query = "";


        }, icon: Icon(Icons.done),
        )
    ];


    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
        IconButton(onPressed: (){

          

        }, icon: Icon(Icons.clear),
        );

  }

  @override
  Widget buildResults(BuildContext context) {
   return Container(); 
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
  return Container(); 
    throw UnimplementedError();
  }




}