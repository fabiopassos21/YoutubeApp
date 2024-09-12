import 'package:flutter/material.dart';

class biblioteca extends StatefulWidget {
  const biblioteca({super.key});

  @override
  State<biblioteca> createState() => _bibliotecaState();
}

class _bibliotecaState extends State<biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Biblioteca"),
      ),
    );
  }
}
