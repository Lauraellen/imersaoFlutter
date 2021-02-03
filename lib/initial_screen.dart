import 'package:flutter/material.dart';
import 'package:flutter_application_1/trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child são as coisas que vão dentro desse widget
      // Material para construção da tela
      child: Column(
        children: [
          SizedBox(height: 167.0),
          Image(
            image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(height: 24.0),
          // \n é para pular linha
          Text(
            'Trivia\nAcademy',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 88.0,
          ),
          /*onPressed é onde fazemos a função de redirecionamento de página
          materialPageRoute faz a transição para a tela q definimos
          context pois usaremos o mesmo contexto da tela atual, onde irá
          preencher toda a tela */
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TriviaScreen()),
              );
            },
            child: Text(
              'Começar',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            color: Color(0xffDA0175),
            textColor: Color(0xffF7F7F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            //left, top, rigth, bottom
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}
