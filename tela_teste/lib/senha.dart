// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unused_label

import 'package:flutter/material.dart';

import 'package:tela_teste/senha.dart';

import 'cadastrado.dart';
import 'login_page.dart';

class Senha extends StatelessWidget {
  const Senha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              'ESQUECEU SUA SENHA?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Fica tranquilo iremos fazer uma nova.',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  /*icon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),*/
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(300.0, 70.0),
              ),
              child: Text(
                'RECUPERAR AGORA',
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
    );
  }
}
