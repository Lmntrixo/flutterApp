import 'package:flutter/material.dart';
import 'package:otaku/chats/profil_user_page/profile_user_circle.dart';
import 'package:otaku/chats/profil_user_page/profile_user_followers.dart';
import 'package:otaku/chats/profil_user_page/profile_user_letters.dart';
import 'package:otaku/chats/profil_user_page/profile_user_post.dart';

class ProfileSender extends StatefulWidget {
  const ProfileSender({super.key});

  @override
  State<ProfileSender> createState() => _ProfileSenderState();
}

class _ProfileSenderState extends State<ProfileSender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 245,
                  backgroundColor: Colors.white ,
                  
                  floating: false,
                  pinned: false,
                  leading: IconButton(onPressed: (){},
                       icon: const Icon(Icons.arrow_back_ios,
                       color: Colors.black,),),
                      actions: [
                        IconButton(onPressed: (){},
                       icon: const Icon(Icons.more_vert,color:  Colors.black,),)
                      ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
              children: [
                //page de couverture
                Container(
                  height: 250,
                  padding:const  EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/vorpal.PNG'),
                        fit: BoxFit.cover),
                  ),
                ),
                
                //contenu de la page de profil
                Positioned(
                    top: 175,
                    left: 16,
                    right: 16,
                    child: Column(
                      children: [
                        //circle avatar
                        CircleAvatar(
                          
                          radius: 50,
                          backgroundImage:
                             const  AssetImage('assets/images/adonis.jpg'),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
                    
                  ),
                  
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:const  EdgeInsets.all(6),
              child: Container(
                padding:const  EdgeInsets.all(0.2),
            // color: Colors.purple,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    'Daiki Aomine',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text('Daiki Aomine'),
                ),
                const Text('Matakara masamine'),
                const SizedBox(
                  height: 16,
                ),
                const Column(
                  children: [],
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 42,
                        width: 140,
                        decoration: const BoxDecoration(
                            // color: Colors.green
                            ),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                    ))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                                Text(
                                  'Follow',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 140,
                        decoration: const BoxDecoration(
                            // color: Colors.pink,
                            ),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      color: Colors.white,
                                    ))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Chat',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
          ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(const TabBar(
                    tabs: [
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Posts',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '500',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Letters',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '2000',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Cercles',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '15',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Folower',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '538708',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                    labelColor: Colors.grey,
                  )),
                  pinned: true,
                )
              ];
            },
            body: const TabBarView(
              children: [
                ProfileUserPosts(),
                ProfileUserLetters(),
                ProfileUserCircle(),
                ProfileUserFollowers()
              ],
            )),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  _SliverAppBarDelegate(this.tabBar);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapscontent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
