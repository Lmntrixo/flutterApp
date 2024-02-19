import 'package:flutter/material.dart';
import 'package:otaku/cercle_pages/home_circle.dart';
import 'package:otaku/cinema/home_cinema.dart';
import 'package:otaku/chats/home_tchat.dart';
//import 'package:otaku/pages/accueil.dart';
import 'package:otaku/pages/login_sreen.dart';
import 'package:otaku/postReels/homepr.dart';
import 'package:otaku/propfiluser/profife_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const [ HomePostReels(),HomeCirclePage(),HomeTchat(),HomeSalle(),MyProfile()][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentIndex,
          onTap: (index) =>setCurrentPage(index),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.catching_pokemon),
                label: 'cercles',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.comment),
                label: 'chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.personal_video),
                label: 'cinema',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ]),
      ),
    );
  }
}

class QuizApp extends StatelessWidget {
  const  QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/one_piece.jpg"),
        const Text(
          'Testez votre culture otaku',
          style: TextStyle(fontSize: 25),
        ),
        const Text(
          'decouvrez des tas de jeux de l\'animeVerse',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 18)),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: const Text(
            'ikimasho',
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeTchat()),
              );
            },
            child: const Text('Chat'))
      ],
    ));
  }
}
