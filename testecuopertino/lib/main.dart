import 'package:flutter/material.dart';
import 'package:testecuopertino/cadastro.equipe.dart';
import 'package:testecuopertino/home.page.dart';
import 'package:testecuopertino/jogartruco.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cadastro': (context) => CadastroEquipe(),
        '/cadastro2': (context) => CadastroEquipe2(),
        '/jogartruco': (context) => JogarTruco(),
      },
    );
  }
}
