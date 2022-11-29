// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class Senha extends StatelessWidget {
  const Senha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Text(
            'ESQUECEU SUA SENHA?',
            style: TextStyle(
              fontSize: 35.0,
              ),
              ),
        ],
      ),
    );
  }
}