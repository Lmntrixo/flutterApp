import 'package:flutter/material.dart';

class CircleInfo extends StatelessWidget {
  const CircleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [

          Container(
            height: 50,
            width: 500,
            color:const Color.fromARGB(245, 240, 236, 236),
              padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('Description', style: TextStyle(color: Colors.grey),)
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),
          Center(
            child:  Container(
               padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              height: 100,
              child: const Wrap(
                children: [
                  Text('cette section contien la description du cercle j\'ai pas vraiment d\'inspiration comme description booff')
                ],
              ),
            ),
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),
          Container(
           height: 50,
            width: 500,
            color:const Color.fromARGB(245, 240, 236, 236),
              padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('Directives du cercle', style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),
          Container(
            height: 50,
            padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('ensenbles des directives , if null on mettra pas de directives'),
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),
          Container(
            height: 50,
            width: 500,
            color:const Color.fromARGB(245, 240, 236, 236),
              padding:const  EdgeInsets.fromLTRB(15, 15, 3, 2),
              child: const Text('parametres cercle', style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),
          Container(
            height: 50,
            child:const  Row(
              children: [
                Icon(Icons.lock_open_rounded, color: Colors.grey,),
                SizedBox(width: 10,),
                Text('pas d\'aprobation requise')
              ],
            ),
          ),
          SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

          Container(
            height: 50,
            child: const Row(
              children: [
                Icon(Icons.person_pin,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('transfert des droit d\'administration active')
              ],
            ),),
            SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

             Container(
              height: 50,
            child: const Row(
              children: [
                Icon(Icons.link_rounded,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('tout le monde peut publier des liens')
              ],
            ),),
            SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

             Container(
              height: 50,
            child:const  Row(
              children: [
                Icon(Icons.perm_media_outlined,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('tout le monde peut publier des images/videos')
              ],
            ),),
            SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

            Container(
              height: 50,
            child: const Row(
              children: [
                Icon(Icons.person_pin_outlined,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('pas de verification d\'age requis')
              ],
            ),),
            SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

            Container(
              height: 50,
            child:const  Row(
              children: [
                Icon(Icons.female_outlined,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('pas de restrictions de genre')
              ],
            ),),
            SizedBox(height: 0.7, child: Container(color: Colors.grey,),),

            Container(
              height: 50,
            child:const  Row(
              children: [
                Icon(Icons.group,color: Colors.grey,),
                SizedBox(width: 10,),
                Text('pas de limitation d\'age')
              ],
            ),)



        ],
      ),
    );
  }
}
