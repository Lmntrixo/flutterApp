import 'package:flutter/material.dart';
import 'package:otaku/cercle_pages/circleTaBardetails/circle_highlight.dart';
import 'package:otaku/cercle_pages/circleTaBardetails/circle_info.dart';
import 'package:otaku/cercle_pages/circleTaBardetails/circle_posts.dart';
import 'package:otaku/cercle_pages/circleTaBardetails/circle_threads.dart';


class CircleDetails extends StatefulWidget {
  const CircleDetails({super.key});

  @override
  State<CircleDetails> createState() => _CircleDetailsState();
}

class _CircleDetailsState extends State<CircleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 290,
                  backgroundColor: Colors.white ,
                  
                  floating: false,
                  pinned: false,
                  leading: IconButton(onPressed: (){},
                       icon: const Icon(Icons.arrow_back_ios,
                       color: Colors.grey,),),
                      actions: [
                        IconButton(onPressed: (){},
                       icon: const Icon(Icons.more_vert,color:  Colors.grey,),)
                      ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 200,
                           // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image:  DecorationImage(image: AssetImage('assets/images/one_piece.jpg'),
                              fit: BoxFit.cover)
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 30,
                            right: 150,
                            
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(7, 25, 40, 0),
                              height: 85,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(11))
                              ),
                              child: Container(
                                height: 65,
                                width: 45,

                                margin:const  EdgeInsets.all(5),
                                padding: const EdgeInsets.all(5),
                                decoration:const  BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/IMG_20231121_120044_113.jpg'),
                                  fit: BoxFit.cover)
                                  
                                ),
                              ),
                            )
                            )
                        ],
                  ),
                  const SizedBox(
                  height: 16,
                ),
                   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Otaku Strong World',
                            style: TextStyle( fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                ),
                const  Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text('description du cercle sur plusieurs lignes ..'),
                ),
                const SizedBox(
                          height: 5,
                ),
                Row(
                          children: [
                           const  Text('45'),
                           const  SizedBox(width: 10,),
                           const  Text('membres'),
                           const  SizedBox(width: 16,),
                            Container(
                              height: 25,
                              width: 25,
                              child: const Image(image: AssetImage('assets/images/yagami.jpg')),
                            ),
                           const  SizedBox(width: 10,),
                           const Text('Anime/Manga')
                          ],
                ),
                       ],
                     ),
                     SizedBox(width: 2,),
                     Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(right: 3),
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child:const  Text('Join Circle', style: TextStyle(color: Colors.white),),
                     )
                   ],
                 ),
                 
               
                ],
            ),
                    const SizedBox(
                  height: 16,
                ),   ],
                    ),   
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
                            
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Threads',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'highlights',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Text(
                              'Info',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            
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
                CirclePost(),
                CircleThreads(),
                CircleHighlight(),
                CircleInfo()
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
