import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.all(0.1),
             // color: Colors.green,
             // width: 500,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding:const EdgeInsets.all(10),
                        child:const  CircleAvatar(
                         backgroundImage: AssetImage('assets/images/jjk.jpg'),

                        ),
                  ),
                const   SizedBox(height: 30,),
                  
                  Expanded(
                    child: Container(
                      padding:const EdgeInsets.only(top: 2),
                     // color: Colors.red,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Daiki Aomine', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('il y/a 2 min'),
                            ],
                          ),
                           SizedBox(height: 5),
                           Wrap(
                            children: [
                                Text('je ne sais pas pour vous mais cette image est une dinguerie, on y voit les que des perso badasss serieux les gens , yamato, luffy kaidou, zoro putain c trop'),
                            ],
                          ),
                          
                         // Image.asset('assets/images/jjk.jpg'),
                          
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  
                 // width: 300,
                  margin:  const EdgeInsets.fromLTRB(62, 1, 15, 4),
                  child: Image.asset('assets/images/one_piece.jpg'),

                ),
                Container(
                  margin:const  EdgeInsets.fromLTRB(62, 1, 0, 1),
                  child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:const Icon(Icons.reply_sharp,color: Colors.grey,)),
                                      const  SizedBox(width: 10,),
                                    IconButton(
                                        onPressed: () {}, icon:const Icon(Icons.chat,color: Colors.grey,)),
                                       const SizedBox(width: 10,),
                                  IconButton(
                                        onPressed: () {}, icon:const Icon(Icons.favorite,color: Colors.grey,))
                                  ],
                                ),
                                PopupMenuButton(itemBuilder: (context) {
                                  List<PopupMenuEntry<Object>> list = [];
                                  list.add(const PopupMenuItem(
                                    
                                    value: "data",
                                    child: Text('data'),
                                  ));
                                  return list;
                                }),
                              ],
                            ),
                ),
                SizedBox(height: 0.9,
                child:Container(
                  decoration:const  BoxDecoration(
                    color: Colors.grey
                  ),
                  )
                  ), 
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.all(0.1),
             // color: Colors.green,
             // width: 500,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding:const  EdgeInsets.all(10),
                        child:const  CircleAvatar(
                         backgroundImage: AssetImage('assets/images/jjk.jpg'),

                        ),
                  ),
                const  SizedBox(height: 30,),
                  
                  Expanded(
                    child: Container(
                      padding:const EdgeInsets.only(top: 2),
                     // color: Colors.red,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Daiki Aomine', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('il y/a 2 min'),
                            ],
                          ),
                           SizedBox(height: 5),
                           Wrap(
                            children: [
                                Text('Adonis , jeune orphelin eleve par une sorciere voit sa vie changer a tout jamais le jour ou il a ete decide que les sorcieres doivent disparaitre du monde des humains. assistant impuissant a l\'assasinat en public de la seule personne proche de lui il est emprisone et considere comme un traitre ayant cotoye les sorcieres. Suite a un incident dans la prison ce dernier libere et peut enfin commencer sa vengeance. cet anime est une dinguerie/......'),
                            ],
                          ),
                          
                         // Image.asset('assets/images/jjk.jpg'),
                          
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  
                 // width: 300,
                  margin:const  EdgeInsets.fromLTRB(62, 1, 15, 4),
                  child: Image.asset('assets/images/adonis.jpg'),

                ),
                Container(
                  margin:const  EdgeInsets.fromLTRB(62, 1, 0, 1),
                  child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:const  Icon(Icons.reply_sharp,color: Colors.grey,)),
                                       const  SizedBox(width: 10,),
                                    IconButton(
                                        onPressed: () {}, icon:const  Icon(Icons.chat,color: Colors.grey,)),
                                      const  SizedBox(width: 10,),
                                  IconButton(
                                        onPressed: () {}, icon:const  Icon(Icons.favorite,color: Colors.grey,))
                                  ],
                                ),
                                PopupMenuButton(itemBuilder: (context) {
                                  List<PopupMenuEntry<Object>> list = [];
                                  list.add(const PopupMenuItem(
                                    value: "data",
                                    child: Text('data'),
                                  ));
                                  return list;
                                }),
                              ],
                            ),
                ),
                SizedBox(height: 0.6,
                child:Container(
                  decoration:const  BoxDecoration(
                    color: Colors.grey
                  ),
                  )
                  ), 
              ],
            ),
          ],
        ),



        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.all(0.1),
             // color: Colors.green,
             // width: 500,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding:const  EdgeInsets.all(10),
                        child:const  CircleAvatar(
                         backgroundImage: AssetImage('assets/images/one_piece.jpg'),

                        ),
                  ),
                 const  SizedBox(height: 30,),
                  
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.only(top: 2),
                     // color: Colors.red,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Daiki Aomine', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('il y/a 2 min'),
                            ],
                          ),
                           SizedBox(height: 5),
                           Wrap(
                            children: [
                                Text('tellement vrai et touchante cette citation........'),
                            ],
                          ),
                          
                         // Image.asset('assets/images/jjk.jpg'),
                          
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  
                 // width: 300,
                  margin: const EdgeInsets.fromLTRB(62, 1, 15, 4),
                  child: Image.asset('assets/images/citation.png'),

                ),
                Container(
                  margin:const   EdgeInsets.fromLTRB(62, 1, 0, 1),
                  child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.reply_sharp,color: Colors.grey,)),
                                       const  SizedBox(width: 10,),
                                    IconButton(
                                        onPressed: () {}, icon: const Icon(Icons.chat,color: Colors.grey,)),
                                       const  SizedBox(width: 10,),
                                  IconButton(
                                        onPressed: () {}, icon:const Icon(Icons.favorite,color: Colors.grey,))
                                  ],
                                ),
                                PopupMenuButton(itemBuilder: (context) {
                                  List<PopupMenuEntry<Object>> list = [];
                                  list.add(const PopupMenuItem(
                                    value: "data",
                                     child: Text('data'),
                                  ));
                                  return list;
                                }),
                              ],
                            ),
                ),
                SizedBox(height: 0.9,
                child:Container(
                  decoration:const  BoxDecoration(
                    color: Colors.grey
                  ),
                  )
                  ), 
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const  EdgeInsets.all(0.1),
             // color: Colors.green,
             // width: 500,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding:const EdgeInsets.all(10),
                        child:const  CircleAvatar(
                         backgroundImage: AssetImage('assets/images/adonis.jpg'),

                        ),
                  ),
               const   SizedBox(height: 30,),
                  
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.only(top: 2),
                     // color: Colors.red,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Daiki Aomine', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('il y/a 2 min'),
                            ],
                          ),
                           SizedBox(height: 5),
                           Wrap(
                            children: [
                                Text('On set d\'accord que Aomine est belle et bien le plus fort de la generation miracle et de kuroko no basuke?'),
                            ],
                          ),
                          
                         // Image.asset('assets/images/jjk.jpg'),
                          
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  
                 // width: 300,
                  margin:const  EdgeInsets.fromLTRB(62, 1, 15, 4),
                  child: Image.asset('assets/images/vorpal.PNG'),

                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(62, 1, 0, 1),
                  child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.reply_sharp,color: Colors.grey,)),
                                       const  SizedBox(width: 10,),
                                    IconButton(
                                        onPressed: () {}, icon: const Icon(Icons.chat,color: Colors.grey,)),
                                        const SizedBox(width: 10,),
                                  IconButton(
                                        onPressed: () {}, icon:const  Icon(Icons.favorite,color: Colors.grey,))
                                  ],
                                ),
                                PopupMenuButton(itemBuilder: (context) {
                                  List<PopupMenuEntry<Object>> list = [];
                                  list.add(const PopupMenuItem(
                                    value: "data",
                                    child: Text('data'),
                                  ));
                                  return list;
                                }),
                              ],
                            ),
                ),
                SizedBox(height: 0.6,
                child:Container(
                  decoration:const  BoxDecoration(
                    color: Colors.grey
                  ),
                  )
                  ), 
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const  EdgeInsets.all(0.2),
             // color: Colors.green,
             // width: 500,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding:const  EdgeInsets.all(10),
                        child:const  CircleAvatar(
                         backgroundImage: AssetImage('assets/images/takemichi.png'),

                        ),
                  ),
                 const  SizedBox(height: 30,),
                  
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.only(top: 2),
                     // color: Colors.red,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Daiki Aomine', style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('il y/a 2 min'),
                            ],
                          ),
                           SizedBox(height: 5),
                           Wrap(
                            children: [
                                Text(' j\'adore toout simplement ce mec ronie kadle ** le chanteur du groupe falling in reverse. perso ses chansons popular monster, the drug in me et the voice in head sont des master class' ),
                            ],
                          ),
                          
                         // Image.asset('assets/images/jjk.jpg'),
                          
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  
                 // width: 300,
                  margin:const  EdgeInsets.fromLTRB(62, 1, 15, 4),
                  child: Image.asset('assets/images/ronie.PNG.png'),

                ),
                Container(
                  margin:const EdgeInsets.fromLTRB(62, 1, 0, 1),
                  child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.reply_sharp,color: Colors.grey,)),
                                      const  SizedBox(width: 10,),
                                    IconButton(
                                        onPressed: () {}, icon: const Icon(Icons.chat,color: Colors.grey,)),
                                      const SizedBox(width: 10,),
                                  IconButton(
                                        onPressed: () {}, icon:const  Icon(Icons.favorite,color: Colors.grey,))
                                  ],
                                ),
                                PopupMenuButton(itemBuilder: (context) {
                                  List<PopupMenuEntry<Object>> list = [];
                                  list.add(const PopupMenuItem(                                  
                                    value: "data",
                                     child: Text('data'),
                                  ));
                                  return list;
                                }),
                              ],
                            ),
                ),
                SizedBox(height: 0.9,
                child:Container(
                  decoration:const  BoxDecoration(
                    color: Colors.grey
                  ),
                  )
                  ), 
              ],
            ),
          ],
        )

      ]
      )
      ,
    );
  }
}
