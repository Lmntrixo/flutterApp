import 'package:flutter/material.dart';
import 'package:otaku/postReels/create_post.dart';
import 'package:otaku/postReels/post_page.dart';
import 'package:otaku/postReels/reels_page.dart';

class HomePostReels extends StatefulWidget {
  const HomePostReels({super.key});

  @override
  State<HomePostReels> createState() => _HomePostReelsState();
}

class _HomePostReelsState extends State<HomePostReels> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            
            backgroundColor: Colors.purple,
            title: const Text('IvanTchatApp'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
            ],
            bottom: 
            const TabBar(
                
                indicatorColor: Colors.purple,
                physics:  BouncingScrollPhysics(),
                tabs:  [
                  Tab(
                    text: "Posts",
                  ),
                  Tab(
                    text: "reels",
                  )
                ]),
          ),
          floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreatePostPage()));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.create),
      ),
          body: const TabBarView(
            children: [
              PostPage(),
              ReelsPage()
            ]
          ),
        )
        );
  }
}
