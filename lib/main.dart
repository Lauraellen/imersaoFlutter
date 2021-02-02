import 'package:flutter/material.dart';
import 'package:flutter_application_1/initial_screen.dart';

// esse método é o primeiro método que será executado iniciar a aplicação
void main() {
  runApp(Trivia());
}

// é stateless porque não precisamos que o estado seja alterado
class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // aqui definimos a tela inicial
      home: InitialScreen(),
    );
  }
}
