import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Api api = Api();
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Inicio")),
    );
  }
}
