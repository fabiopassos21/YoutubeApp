import 'package:flutter/material.dart';

class inscricao extends StatefulWidget {
  const inscricao({super.key});

  @override
  State<inscricao> createState() => _inscricaoState();
}

class _inscricaoState extends State<inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Inscricao'),
      ),
    );
  }
}
