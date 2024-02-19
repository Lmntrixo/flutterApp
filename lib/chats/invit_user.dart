import 'package:flutter/material.dart';

class IviteUser extends StatefulWidget {
  const IviteUser({super.key});

  @override
  State<IviteUser> createState() => _IviteUserState();
}

class _IviteUserState extends State<IviteUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inviter un utilisateur'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.all(23),
                child: TextFormField(
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.grey))),
                )
                ),
          ),
          Center(
            child: Column(
              children: [
                const Text('partages ton profil'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            margin: const EdgeInsets.all(11),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: const Text(
                              'data',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
                            ),
                          ),
                          const Text('URL'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(11),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Text(
                              'data',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
                            ),
                          ),
                          const Text('Whatsapp'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(11),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Text(
                              'data',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
                            ),
                          ),
                          const Text('Twitter'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(11),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: const Text(
                              'data',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 185, 105, 99)),
                            ),
                          ),
                          const Text('instagram'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(11),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Text(
                              'data',
                              style: TextStyle(fontSize: 9, color: Colors.red),
                            ),
                          ),
                          const Text('autres'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
              child: Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child:const  Center(
              child: Column(
                children: [
                   Text('data'),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
