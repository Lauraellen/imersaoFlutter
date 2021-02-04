import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';

// é stateful por causa da interação do usuário que altera o estado da tela
class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  @override
  int answer = 0;
  List<Question> questionsList = Question.getQuestionsList();

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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA 1',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  questionsList[0].questionText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                    color: Colors.white,
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text(questionsList[0].option1),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                    color: Colors.white,
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text(questionsList[0].option2),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                    color: Colors.white,
                  ),
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    title: Text(questionsList[0].option3),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                    color: Colors.white,
                  ),
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    title: Text(questionsList[0].option4),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 3,
                color: Colors.grey.withOpacity(0.25),
                offset: Offset(0, -1),
              )
            ]),
            child: Center(
              child: FlatButton(
                color: Color(0xffDA0175),
                textColor: Color(0xffF7F7F7),
                onPressed: () {},
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 16),
                ),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
