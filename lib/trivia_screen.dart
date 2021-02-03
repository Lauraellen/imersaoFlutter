import 'package:flutter/material.dart';

// é stateful por causa da interação do usuário que altera o estado da tela
class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // isso é para remover o botão voltar no top da tela
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Image(
          image: AssetImage('lib/assets/icon.png'),
        ),
      ),
    );
  }
}
