import 'package:flutter/material.dart';


class TchatSetting extends StatefulWidget {
  const TchatSetting({super.key});

  @override
  State<TchatSetting> createState() => _TchatSettingState();
}

class _TchatSettingState extends State<TchatSetting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Parametre de discussion',
        style: TextStyle(fontSize: 20)),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){}, child: const Text('enregistrer'))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Container(
            color:const  Color.fromARGB(245, 240, 236, 236),
              height: 50,
              width: 500,
              padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('image Arriere plan',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color.fromARGB(255, 37, 35, 35)),),
          ),
          const SizedBox(height: 0.5),

          Container(
            height: 300,
            //color: Colors.blue,
            child: Center(
              child: Container(
                color: Colors.grey,
                height: 200,
                width: 100,

                
              ),
            ),
          ),

          const SizedBox(height: 0.5),

          Container(
            height: 50,
            width: 500,
            color:const Color.fromARGB(245, 240, 236, 236),
              padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('parametres',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color:Color.fromARGB(255, 37, 35, 35))),
            
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
                                          Icon(Icons.notifications_off),
                                          SizedBox(width: 10,),
                                          Text('Silencieux')
                                        ],
                                      ),
                                    ),

                                    Container(
                                      //color: Colors.red,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          
                                          IconButton(onPressed: (){
                                              
                                          }, icon: const Icon(Icons.toggle_off_outlined))
                                          
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
                                          Icon(Icons.remove_red_eye_rounded),
                                          
                                          SizedBox(width: 10,),
                                          Text('Masquer')
                                        ],
                                      ),
                                    ),

                                    Container(
                                      //color: Colors.green,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          IconButton(onPressed: (){
                                            
                                          },
                                           icon: const Icon(Icons.toggle_off_outlined),)
                                          
                                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                )
                              ),



                            ],
                          ),

          SizedBox(
          height: 0.6,
          child: Container(
          color: Colors.grey,
          ),
          ),

          Container(
            height: 50,
            color:const  Color.fromARGB(221, 236, 232, 232),
            width: 500,
              padding: const EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('Autre Parametre',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey),),
          ),
          const SizedBox(height: 0.5),

           Container(
           // height: 300,
           // color: Colors.purple,
           child: Column(
            children: [
              //ligne nunero 1
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
                                          Icon(Icons.report),
                                          SizedBox(width: 10,),
                                          Text('data policy')
                                        ],
                                      ),
                                    ),

                                    Container(
                                      //color: Colors.red,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          IconButton(onPressed: (){
                                              
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

            //ligne nunero 2
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
                                          Icon(Icons.report_problem),
                                          SizedBox(width: 10,),
                                          Text('signaler')
                                        ],
                                      ),
                                    ),

                                    
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
            //ligne numero 3
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
                                          Icon(Icons.block_flipped),
                                          SizedBox(width: 10,),
                                          Text('Bloquer')
                                        ],
                                      ),
                                    ),
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
            //ligne numero 4
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
                                          Icon(Icons.delete),
                                          SizedBox(width: 10,),
                                          Text('supprimer')
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                )
                              ),

            ],
           ),
          ),


        ],
        ),
        
      ),
    );
  }
}