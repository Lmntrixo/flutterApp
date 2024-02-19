import 'package:flutter/material.dart';
import 'package:otaku/cercle_pages/category_cercle.dart';
import 'package:otaku/cercle_pages/cercles_aditional_setting.dart';

class CreateCirclePage extends StatefulWidget {
  const CreateCirclePage({super.key});

  @override
  State<CreateCirclePage> createState() => _CreateCirclePageState();
}

class _CreateCirclePageState extends State<CreateCirclePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 180,
                        color: Colors.grey,
                      ),
                      
                      Positioned(
                        top: 125,
                        left: 295,
                        right: 0,
                        bottom: 10,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent
                        ),
                        child: CircleAvatar(
                          child: IconButton(onPressed: (){},
                           icon: const Icon(Icons.camera_alt)),
                        )
                      )
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
                              color: Colors.grey,
                              //image: DecorationImage(
                                //image: AssetImage('assets/images/yourname.jpg'),
                                //fit: BoxFit.cover)
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                
                                  child:Container(
                                   //margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                                    height: 40,
                                    width: 40,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blueAccent,
                                      child: IconButton(onPressed: (){},
                                       icon: Icon(Icons.camera_alt)),
                                    ),
                                  )
                                
                              ),
                            ),
                          ),
                        )
                        )
                    ],
                  ),
                  SizedBox(height: 100),

                   Column(
                    children: [
                      //nom du cercle
                      Column(
                        children: [
                          Container(
                            height: 50,
                            color:const  Color.fromARGB(221, 236, 232, 232),
                            width: 500,
                              padding: const EdgeInsets.fromLTRB(15, 15, 3, 2),
                              child: const Text('Nom Cercle',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey),),
                          ),
                          
                             TextField(
                            
                          )
                        ],
                      ),
                      //Description
                      Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            color:const  Color.fromARGB(221, 236, 232, 232),
                            width: 500,
                              padding: const EdgeInsets.fromLTRB(15, 15, 3, 2),
                              child: const Text('Description',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey),),
                          ),
                           TextField(
                            
                          )
                        ],
                      ),
                      //reglement du groupe
                      Column(
                        children: [
                          Container(
                            height: 50,
                            color:const  Color.fromARGB(221, 236, 232, 232),
                            width: 500,
                              padding: const EdgeInsets.fromLTRB(15, 15, 3, 2),
                              child: const Text('reglement du cercle',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey),),
                          ),
                           TextField(
                              
                            
                            
                          )
                        ],
                      ),
                      //Parametre du cercle
                      Column(
                        children: [
                          Container(
                            height: 50,
                            color:const  Color.fromARGB(221, 236, 232, 232),
                            width: 500,
                              padding: const EdgeInsets.fromLTRB(15, 15, 3, 2),
                              child: const Text('Parametre du cercle',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey),),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                //color: Colors.pink,
                                child: Center(
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.category),
                                          SizedBox(width: 10,),
                                          Text('Categories Cercles')
                                        ],
                                      ),
                                    ),

                                    Container(
                                      //color: Colors.red,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text('selection requis'),
                                         const  SizedBox(width: 10,),
                                          IconButton(onPressed: (){
                                              Navigator.push(context,
                                               MaterialPageRoute(builder: (context)=> const CategoryCirclePage()));
                                          }, icon: const Icon(Icons.arrow_forward_ios))
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                )
                              ),

                              SizedBox(
                                height: 0.6,
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),

                              Container(
                                height: 60,
                                //color: Colors.blue,
                                child: Center(
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Icon(Icons.toggle_off),
                                              Icon(Icons.toggle_on),
                                            ],
                                          ),
                                          
                                          SizedBox(width: 10,),
                                          Text('Parametres suplementaires')
                                        ],
                                      ),
                                    ),

                                    Container(
                                      //color: Colors.green,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          IconButton(onPressed: (){
                                            Navigator.push(context,
                                             MaterialPageRoute(builder: (context) => const AdditionalSetting()));
                                          },
                                           icon: const Icon(Icons.arrow_forward_ios),)
                                          
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                )
                              ),



                            ],
                          )
                        ],
                      )                      
                    ],
                  ),
                      
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
        )
      ),
    );
  }
}