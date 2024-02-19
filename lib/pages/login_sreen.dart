import 'package:flutter/material.dart';
import 'package:otaku/pages/accueil.dart';
import 'package:otaku/pages/text_quizz.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nom d\'utilisateur ou Pseudo',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 160.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Accueil()),
                  );
                },
                child: const Text('se connecter')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextQuizz()),
                  );
                },
                child: const Text('quizz'))
          ],
        ),
      ),
    );
  }
}
