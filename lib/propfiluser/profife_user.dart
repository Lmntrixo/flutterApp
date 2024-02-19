import 'package:flutter/material.dart';
import 'package:otaku/chats/profil_user_page/profile_user_circle.dart';
import 'package:otaku/chats/profil_user_page/profile_user_followers.dart';
import 'package:otaku/chats/profil_user_page/profile_user_letters.dart';
import 'package:otaku/chats/profil_user_page/profile_user_post.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
                  pinned: true,
                  
                      actions: [
                        IconButton(onPressed: (){},
                       icon: const Icon(Icons.settings,color:  Colors.purple,size: 30,),)
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
            child:const  Column(
              children: [
                 Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    'Daiki Aomine',
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                  ),
                ),
                
                 SizedBox(
                  height: 16,
                ),
                
                SizedBox(
                  height: 5,
                ),
                
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapscontent) {
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
