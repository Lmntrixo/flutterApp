import 'package:flutter/material.dart';
import 'package:otaku/pages/quizzy.dart';

class TextQuizz extends StatefulWidget {
  const TextQuizz({super.key});

  @override
  State<TextQuizz> createState() => _TextQuizzState();
}

class _TextQuizzState extends State<TextQuizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Otaku'),
      ),
      body: Center(
          child: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: const BoxDecoration(color: Colors.blue),
            height: 300,
            width: 300,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
                height: 200,
                width: 200,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.purple),
                            height: 25,
                            width: 25,
                            child: Center(
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.pink),
                                height: 12.5,
                                width: 12.5,
                                child: Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                    height: 6.25,
                                    width: 6.25,
                                    child: Center(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.amber),
                                        height: 3.125,
                                        width: 3.125,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.brown),
            height: 100,
            width: 100,
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Quizz()));
                  },
                  child: const Text('testez le quizz')),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/adonis.jpg'))),
            height: 150,
            width: 150,
          )
        ]),
      )),
    );
  }
}
