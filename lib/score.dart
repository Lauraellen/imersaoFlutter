import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
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
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
