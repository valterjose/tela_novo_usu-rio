// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:tela_teste/senha.dart';

import 'cadastrado.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10.0),
            Text(
              'Cadrastre-se no Green agora',
              style: TextStyle(
                //letterSpacing: 1.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Para os CABEÇALHOS não usei nenhuma fonte expecífica
            //caso haja alguma fonte falar e farei a alteração.
            SizedBox(
              height: 25.0,
            ),

            /* Usei dois TEXTFIELD como entrada do usúario Email e Senha
            também usei as cores do Material como foi pedido
             e caso  haja alguma alteração a fazer me passa e farei.*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.green.shade500),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextField(
                  //autofocus:true ,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Senha',
                    // icon: Icon(Icons.key),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            /* Usando elevatedButton para finalizar o cadastro de novo usuário,
            caso precise fazer qualquer alteração estou a  disposição*/

            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(350.0, 70.0),
                ),
                child: Text(
                  'CADASTRAR',
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
                        return Cadastrado();
                      },
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 120.0)),
                TextButton(
                    child: Text('Recuperar senha?'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Senha();
                          },
                        ),
                      );
                    }),
              ],
            ),

            SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}
