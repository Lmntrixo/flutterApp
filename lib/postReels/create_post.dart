import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Publication'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey,)),

        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('0/500',style: TextStyle(color: Colors.grey, fontSize: 20),),
        )],
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Expanded(
            child: TextField(
          showCursor: true,
          autocorrect: true,
          minLines: null,
          maxLines: null,
          expands: true,
        )),
        Column(
          children: [
            SizedBox(height: 1, child: Container(color: Colors.grey,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.photo, color: Colors.grey,size: 30,)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.emoji_emotions,color: Colors.grey,size: 30,)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.video_library,color: Colors.grey,size: 30,)),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        //backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(
                              color: Colors.blue,
                            ))),
                    child: const Text('Publier'))
              ],
            ),
            SizedBox(
              height: 12,
            )
          ],
        )
      ]),
    );
  }
}
