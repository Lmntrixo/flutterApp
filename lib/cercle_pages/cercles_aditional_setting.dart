import 'package:flutter/material.dart';

class AdditionalSetting extends StatefulWidget {
  const AdditionalSetting({super.key});

  @override
  State<AdditionalSetting> createState() => _AdditionalSettingState();
}

class _AdditionalSettingState extends State<AdditionalSetting> {

  late List<bool> isSelected; // Déclarer la variable isSelected ici

  @override
  void initState() {
    super.initState();
    isSelected = [false]; // Initialiser la variable isSelected dans initState
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Parametres supplementaires'),
          centerTitle: true,
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
              child: const Text('General',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15,color: Color.fromARGB(255, 37, 35, 35)),),
          ),
          const SizedBox(height: 0.5),

           Container(
            height: 100,
            //color: Colors.pink,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                   // color: Colors.blue,
                    width: 300,
                    child: const Center(
                      child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Permission pour les memebres',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 15,),
                     Wrap(
                      children: [
                        Text('La requete d\'hadesion dans ce cercle doit etre approuve par le moderateur', style: TextStyle(color: Colors.grey),)
                      ],
                     )
                    ],
                  ),
                    )
                  ),
                  
                  ToggleButtons(
              isSelected: const [false], // initial state, you can change it according to your needs
              onPressed: (int index) {
                setState(() {
                  // Toggle the state of the button at the given index
                  isSelected[index] = !isSelected[index];
                });
              },
              children:const  [Icon(Icons.toggle_off_outlined, size: 45,)],
            ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 0.5),
          Container(
            height: 100,
            //color: Colors.pink,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                   // color: Colors.blue,
                    width: 300,
                    child: const Center(
                      child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Masque les post inapropries',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 15,),
                     Wrap(
                      children: [
                        Text('les contenus inapropries ne seront pas affiches', style: TextStyle(color: Colors.grey),)
                      ],
                     )
                    ],
                  ),
                    )
                  ),
                  
                  ToggleButtons(
              isSelected: const [false], // initial state, you can change it according to your needs
              onPressed: (int index) {
                setState(() {
                  // Toggle the state of the button at the given index
                  isSelected[index] = !isSelected[index];
                });
              },
              children:const  [Icon(Icons.toggle_off_outlined, size: 45,)],
            ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 0.5),

          const SizedBox(height: 0.5),
          Container(
            height: 100,
            //color: Colors.pink,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                   // color: Colors.blue,
                    width: 300,
                    child: const Center(
                      child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tout le monde peut envoyer des liens',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 15,),
                     Wrap(
                      children: [
                        Text('memes les utilisateurs qui sont pas des moderateurs peuvent envoyer des liens', style: TextStyle(color: Colors.grey),)
                      ],
                     )
                    ],
                  ),
                    )
                  ),
                  
                  ToggleButtons(
              isSelected: const [false], // initial state, you can change it according to your needs
              onPressed: (int index) {
                setState(() {
                  // Toggle the state of the button at the given index
                  isSelected[index] = !isSelected[index];
                });
              },
              children:const  [Icon(Icons.toggle_off_outlined, size: 45,)],
            ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 0.5),

           Container(
            height: 100,
            //color: Colors.pink,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                   // color: Colors.blue,
                    width: 300,
                    child: const Center(
                      child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tous le monde peut poster des images/videos',style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 15,),
                     Wrap(
                      children: [
                        Text('Y compris les utilisateurs qui ne sont pas moderateurs', style: TextStyle(color: Colors.grey),)
                      ],
                     )
                    ],
                  ),
                    )
                  ),
                  
                  ToggleButtons(
              isSelected: const [false], // initial state, you can change it according to your needs
              onPressed: (int index) {
                setState(() {
                  // Toggle the state of the button at the given index
                  isSelected[index] = !isSelected[index];
                });
              },
              children:const  [Icon(Icons.toggle_off_outlined, size: 45,)],
            ),
                ],
              ),
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

           //Container(
            //height: 300,
           // color: Colors.purple,
         // ),


        ],
        ),
        ),
        )
      );
      
  }
}