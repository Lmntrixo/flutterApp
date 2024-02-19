import 'package:flutter/material.dart';
import 'package:otaku/chats/invit_user.dart';
import 'package:otaku/chats/story_page.dart';
import 'package:otaku/chats/tchat.dart';

class HomeTchat extends StatefulWidget {
  const HomeTchat({super.key});

  @override
  State<HomeTchat> createState() => _HomeTchatState();
}

class _HomeTchatState extends State<HomeTchat> {
  @override
  void initState() {
    super.initState();
  }

  init() async {}

  @override
  void setState(fn){
    if(mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3, 
       child: Scaffold(
            appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.indigo,
                  size: 28,
                )
                ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                  ),
                  ),
            ],
            bottom:const  TabBar(
              
              labelStyle: TextStyle(fontSize: 16),
              indicatorColor: Colors.purple,
              physics:  BouncingScrollPhysics(),
              tabs:   [
                Tab(
                  text: "Discussions",
                ),
                Tab(
                  text: "Statut",
                ),
                Tab(
                  text:  "Appels",
                )
              
            ]),
            
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
           MaterialPageRoute(builder: ((context) => const IviteUser())));
        },
        backgroundColor: const Color.fromARGB(255, 137, 84, 157),
        child: const Icon(
          Icons.edit,
        ),
      ),
      body:  TabBarView(
        children: [
          MessageSection(),
         // Headersection(),
          StorySection(),
          //Expanded(
           // child: MessageSection(),
         // )
        ],
      ),
      )
      ),
      
      
    );
  }
}

//codage des differentes section de la homeTchatPage

class Headersection extends StatelessWidget {
  final List menuItems = ['Discussion', 'statut', 'appels', 'cinema'];

  Headersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 115,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: menuItems.map((item) {
            return Container(
              margin: const EdgeInsets.only(right: 50),
              child: Text(
                item,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            );
          }).toList()),
        ),
        
      ),
      
    );
    
  }
  
}

//codage de la section statut ou story

class MessageSection extends StatelessWidget {
  MessageSection({super.key});
  final List messages = [
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "Sukuna",
      "textmessage": 'yoiki tenkai:fukuma misushi',
      "unread": 7,
      "date": "10:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "gojo satoru",
      "textmessage": "yoiki tenkai:mugen....",
      "unread": 0,
      "date": "20:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "Shanks",
      "textmessage": "KAMUSARI",
      "unread": 5,
      "date": "09:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "yami sukehiro",
      "textmessage": "yami maho:jigengiri higan",
      "unread": 0,
      "date": "10:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "luffy",
      "textmessage": "gomu gomu no:bajruang gun",
      "unread": 0,
      "date": "11:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "gin ichimaru",
      "textmessage": "bankai:kamishini no yari",
      "unread": 1,
      "date": "14:54"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "matakara asamine",
      "textmessage": "je serai un ignee",
      "unread": 2,
      "date": "06:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "saitama",
      "textmessage": "maji naguri",
      "unread": 6,
      "date": "10:38"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "mash",
      "textmessage": "chukurimu",
      "unread": 2,
      "date": "05:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "robin",
      "textmessage": "gigantesco mano",
      "unread": 0,
      "date": "18:34"
    },
    {
      "senderporfile": 'assets/images/adonis.jpg',
      "sendername": "yuta okotsu",
      "textmessage": "okotsu na okotsu",
      "unread": 4,
      "date": "11:44"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
          children: messages.map((msg) {
            
        return InkWell(
          
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => TchatPage())));
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 15, 10, 0),
            child: Row(
              children: [
                Container(
                  height: 63,
                  width: 63,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(msg["senderporfile"]),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                msg["sendername"].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    msg["textmessage"].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                            
                             Text(msg["date"].toString()),
                            
                            msg["unread"] != 0
                                ? Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      msg["unread"].toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Container()
                          ])
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
