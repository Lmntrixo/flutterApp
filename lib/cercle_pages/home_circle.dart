import 'package:flutter/material.dart';
import 'package:otaku/cercle_pages/cercle_details.dart';
import 'package:otaku/cercle_pages/create_circle.dart';
import 'package:otaku/models/cercles_list_model.dart';
import 'package:otaku/models/category_cercle_model.dart';

class HomeCirclePage extends StatefulWidget {
  HomeCirclePage({super.key});

  @override
  State<HomeCirclePage> createState() => _HomeCirclePageState();
}

final List<Cerclelist> _cerclelist = [
  const Cerclelist(
      cercleCover: 'assets/images/Vorpal.PNG',
      cercleProfil: 'assets/images/boobs.jpg',
      cercleName: 'BEST MOVIES',
      cercleDescription: 'cercleDescription',
      cercleCategories: 'Movies/Drama',
      cercleMember: 6,
      cercleMessage: 0,
      cercleViewa: 10),
  const Cerclelist(
      cercleCover: '',
      cercleProfil: '',
      cercleName: 'Animation exchange group',
      cercleDescription: 'Welcome to talk about anime',
      cercleCategories: 'Movies/Drama',
      cercleMember: 40,
      cercleMessage: 5,
      cercleViewa: 45),
  const Cerclelist(
      cercleCover: '',
      cercleProfil: '',
      cercleName: 'All About Pro Wrestling',
      cercleDescription: 'Express your love and hate concerning wrestling',
      cercleCategories: 'Sport',
      cercleMember: 260,
      cercleMessage: 1000,
      cercleViewa: 2000),
  const Cerclelist(
      cercleCover: '',
      cercleProfil: '',
      cercleName: 'XG Gaming',
      cercleDescription: 'venez vivre votre passion pour les jeux videos',
      cercleCategories: 'Games',
      cercleMember: 2000,
      cercleMessage: 40000,
      cercleViewa: 5000),
  const Cerclelist(
      cercleCover: 'assets/images/ronie.PNG.png',
      cercleProfil: '',
      cercleName: 'Music',
      cercleDescription: 'Let\'us enjoy our love of Mussic',
      cercleCategories: 'Music',
      cercleMember: 30000,
      cercleMessage: 40000,
      cercleViewa: 7000),
];

final List<Categorycercle> _categorycercle = [
  const Categorycercle(name: 'rejoint', image: 'assets/images/ronie.PNG.png'),
  const Categorycercle(
      name: 'Anime/Manga', image: 'assets/images/one_piece.jpg'),
  const Categorycercle(name: 'Music', image: ''),
  const Categorycercle(name: 'Cinema', image: ''),
  const Categorycercle(name: 'Sport', image: ''),
  const Categorycercle(name: 'Danse', image: ''),
  const Categorycercle(name: 'Theatre', image: ''),
  const Categorycercle(name: 'otaku', image: ''),
  const Categorycercle(name: 'technology', image: ''),
];

class _HomeCirclePageState extends State<HomeCirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateCirclePage()));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.groups_2),
      ),
      body: Column(children: [
        Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 18)),
            Center(
              child: Container(
                height: 75,
                padding: const EdgeInsets.all(16),
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
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              //color: Colors.grey,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _categorycercle.length,
                  itemBuilder: (context, index) {
                    final nom = _categorycercle[index].name;
                    final igm = _categorycercle[index].image;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(igm),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                nom,
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
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
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _cerclelist.length,
                itemBuilder: (context, index) {
                  final cerclelio = _cerclelist[index];
                  return CercleListSection(
                    cercle: cerclelio,
                  );
                }))
      ]),
    );
  }
}

class CercleListSection extends StatelessWidget {
  const CercleListSection({super.key, required this.cercle});
  final Cerclelist cercle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                // color: Colors.amber,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage('assets/images/vorpal.PNG'),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/boobs.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.amberAccent),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                // height: 100,
                // width: 300,
                // color: Colors.pink,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CircleDetails()));
                          },
                          child: Container(
                            width: 150,
                            child: Wrap(
                              children: [Text(
                              cercle.cercleName,
                              style:const  TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),],
                            ),
                          )
                        ),
                       const  Text('dec 18,2023',
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                 const    SizedBox(
                      height: 8,
                    ),
                    Container(
                      // color: Colors.brown,
                      width: 200,
                      child:  Wrap(
                        children: [
                         const  SizedBox(
                            width: 6,
                          ),
                          Text(
                              cercle.cercleDescription, style: TextStyle(),),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(cercle.cercleCategories,
                            style:const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                height: 25,
                                width: 45,
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  const   Icon(
                                      Icons.person,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      cercle.cercleMember.toString(),
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey)),
                                  height: 25,
                                  width: 45,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     const  Icon(
                                        Icons.comment,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      Text(cercle.cercleMessage.toString(), style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                height: 25,
                                width: 40,
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  const   Icon(
                                      Icons.remove_red_eye,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                    Text(cercle.cercleViewa.toString(), style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    SizedBox(height: 6,),
                   SizedBox(
                      height: 0.8,
                      child: Container(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                
              ),
               
            ],
          ),
          
        ],
      ),
    );
  }
}
