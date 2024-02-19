//import 'dart:ffi';

import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  final List<String> questions = [
    'qui est le pere de Monkey D Luffy?',
    'quel est le reve de Roronoa Zoro?',
    'quel personnage de la serie one piece est surnome le seigneur des enfers?',
    'comment s\'appelle le pirate qui affronte luffy dans le monde des mirroirs?'
  ];

  final List<String> answers = [
    'Dragon',
    'devenir le meilleur Sabreur du monde',
    'Silver Raylight',
    'Charlote Katakuri'
  ];

  int currentQuestionIndex = 0;
  TextEditingController textEditingController = TextEditingController();
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('quizz OTAKU'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex],
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                hintText: 'Entres ta reponse Otaku',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkAnswer();
              },
              child: const Text('IKU'),
            ),
            const SizedBox(height: 15),
            Text('Score:$score')
          ],
        ),
      ),
    );
  }

  void checkAnswer() {
    String userAnswer = textEditingController.text;
    if (userAnswer.trim().toLowerCase() ==
        answers[currentQuestionIndex].toLowerCase()) {
      setState(() {
        score++;
        textEditingController.clear();

        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex ++;
        } else {
          //fin du jeu
          showGameOverDialog();
        }
      });
    } else {
      //reponse incorrect
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Incorect')),
      );
    }
  }

  void showGameOverDialog() {

    showDialog(context: context
    , builder: (BuildContext context){
      return  AlertDialog(
        title:const Text('Fin du jeu'),
        content: Text('Votre Score:$score'),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              currentQuestionIndex= 0;
              score= 0;
            });
            Navigator.of(context).pop();
          }, 
          child: const Text('Rejouer'),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, 
          child:const  Text('Fermer')
          )
        ],
      );

    },
    );
  }
}
