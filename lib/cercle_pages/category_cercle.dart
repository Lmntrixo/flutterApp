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
          body: GridView.builder(
              scrollDirection: Axis.vertical,
              physics:const  ScrollPhysics(),
              itemCount: 30,
              gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 16),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    alignment: Alignment.center,
                    decoration:const  BoxDecoration(
                      //color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: ( MediaQuery.of(context).size.width - 50)/4.5,
                          width: ( MediaQuery.of(context).size.width - 50)/3.8,
                          margin:const EdgeInsets.only(
                            bottom: 4,
                            top: 8,
                          ),
                          padding: const EdgeInsets.all(12),
                          decoration:const  BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        
                       const  Wrap(
                          children: [Text('Anime/categprie', style: TextStyle(fontSize: 13.5),)],
                        )
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
