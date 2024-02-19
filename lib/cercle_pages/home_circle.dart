import 'package:flutter/material.dart';
import 'package:otaku/cercle_pages/create_circle.dart';

class HomeCirclePage extends StatefulWidget {
  const HomeCirclePage({super.key});

  @override
  State<HomeCirclePage> createState() => _HomeCirclePageState();
}

class _HomeCirclePageState extends State<HomeCirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateCirclePage()));
          },
          backgroundColor: Colors.purple,
          child: const Icon(Icons.groups_2),
          ),
      body: Container(
        child: Column(children: [
          
          Column(
            children: [
             const  Padding(padding: EdgeInsets.only(top: 18)),
              Center(
                child: Container(
                  height: 75,
                  padding:const  EdgeInsets.all(16),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
              Center(
                  child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'joined',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Danse',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              // color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'All',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Jeux videos',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'musique',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'shopping',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Anime/Mangas',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              //color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Technologie',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              // color: Colors.grey
                              ),
                          child: const CircleAvatar(radius: 50),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Sport',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 0.6,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
