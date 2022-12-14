// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:tela_teste/login_page.dart';
import 'package:tela_teste/senha.dart';
class Cadastrado extends StatelessWidget {
  const Cadastrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              textAlign: TextAlign.center,
              'GREEN',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                //
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              textAlign: TextAlign.center,
              ' ESTAMOS SUPER FELIZES POR TER VOCÊ NO NOSSO TIME.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
                //
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            /* Text(
               textAlign: TextAlign.center,
              'Fique a vontade para mexer no app e conte com agente no que precisar.',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
                
              ),
            ),*/
            SizedBox(
              height: 60.0,
            ),
             Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(300.0, 70.0),
              ),
              child: Text(
                'VOLTAR',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
            ),
             ),
          ],
        ),
      ),
    );
  }
}
