import 'package:flutter/material.dart';

class CategoryCirclePage extends StatefulWidget {
  const CategoryCirclePage({super.key});

  @override
  State<CategoryCirclePage> createState() => _CategoryCirclePageState();
}

class _CategoryCirclePageState extends State<CategoryCirclePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories Cercles'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //rangee 1
              Center(
                child: Container(
                  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //element 1
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        //child: ,
                      ),
                      const SizedBox(height: 3,),
                      Text('Jeux videos')
                    ],),
                    //element 2
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        //child: ,
                      ),
                      const SizedBox(height: 3,),
                      Text('Anime/Manga'),
                    ],),

                    //element 3
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        //child: ,
                      ),
                      const SizedBox(height: 3,),
                       Text('techno'),
                    ],),

                    //element4
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                       // child: ,
                      ),
                      const SizedBox(height: 3,),
                       Text('Music'),
                    ],)
                  ],
                ),
              ),
              ),
              //rangee 2
              Center(
                child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //element 1
                    Column(children: [
                      Container(
                         height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        //child: ,
                      ),
                      const SizedBox(height: 3,),
                       Text('peinture'),
                    ],)
                  ],
                ),
              ),
              ),

              //rangee 3
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //element 1
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        //child: ,
                      ),
                      const SizedBox(height: 3,)
                    ],)
                  ],
                ),
              ),

              //rangee 4

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //element 1
                    Column(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                       // child: ,
                      ),
                      const SizedBox(height: 3,)
                    ],)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
