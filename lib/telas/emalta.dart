import 'package:flutter/material.dart';

class emalta extends StatefulWidget {
  const emalta({super.key});

  @override
  State<emalta> createState() => _emaltaState();
}

class _emaltaState extends State<emalta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Em Alta'),
      ),
    );
  }
}
