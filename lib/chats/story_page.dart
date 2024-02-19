import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class StorySection extends StatelessWidget {
  final List storyperson = [
    {"name": "sukuna", "profile": 'assets/images/adonis.jpg'},
    {"name": "Gojo Satoru", "profile": 'assets/images/adonis.jpg'},
    {"name": "Daiki Aomine", "profile": 'assets/images/adonis.jpg'},
    {"name": "Monkey D luffy", "profile": 'assets/images/adonis.jpg'},
    {"name": "Ragna", "profile": 'assets/images/adonis.jpg'},
    {"name": "Yuta Okotsu", "profile": 'assets/images/adonis.jpg'},
    {"name": "Hikari", "profile": 'assets/images/adonis.jpg'},
    {"name": "Minato Namikaze", "profile": 'assets/images/adonis.jpg'},
    {"name": "Matakara asamine", "profile": 'assets/images/adonis.jpg'},
    {"name": "orihime inoue", "profile": 'assets/images/adonis.jpg'},
  ];
  StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: 120,
          color: Colors.redAccent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: const Text(
                      'Story',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: storyperson.map((story) {
                    return Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(story["profile"]),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            story["name"],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
        Expanded(child: Container(
          color: Colors.blue,
        ))
      ],
    );
  }
}
