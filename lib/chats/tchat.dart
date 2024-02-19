import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otaku/chats/home_tchat.dart';
import 'package:otaku/chats/profil_user_page/profilesenderuser.dart';
import 'package:otaku/chats/tchat_setting.dart';

class TchatPage extends StatefulWidget {
  const TchatPage({super.key, });
  //final String receiveId;
  @override
  State<TchatPage> createState() => _TchatPageState();
}

class _TchatPageState extends State<TchatPage> {
  final List<Message> _messages = [
    Message(
        text: 'hello',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'hello what\'s up',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'im fine girl and yu ',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.image),
    Message(
        text: 'not too bad not too bad',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'ok please in french now ',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'haha ok',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'tu fais quoi?',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'je suis couchee et toi',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'bof flemme',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'comme d\'hab',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.image),
    Message(
        text: 'sinon t\'es d\'accord que matakara est le plus BG nor?',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'degage',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'mouf',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'chouagne',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'chevre',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'imbecile',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'M',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'O',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'U',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'F',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'Nkancereux',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'ehh Maaaf',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'je vais te blesser hein petite Soeur',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: true,
        senderId: '2',
        receiverId: 'marrion',
        messageType: MessageType.text),
    Message(
        text: 'maaf',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'miff',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
    Message(
        text: 'mouuuuufffff',
        sentTime: DateTime.now().subtract(Duration(minutes: 1)),
        isMe: false,
        senderId: 'marrion',
        receiverId: '2',
        messageType: MessageType.text),
  ];

  final TextEditingController _textEditingController = TextEditingController();

  void _sendmessage(String text) {
    setState(() {
      final message = {
        'text': text,
        'isMe': true,
        'timestamp': DateTime.now().toString(),
      };
      //_messages.add(message);
    });

    _textEditingController.clear();
  }

  void _deleteMessage(int index) {
    setState(() {
      _messages.remove(index);
    });
  }

  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _replyToMessage(int index) {
    final repliedMessage = _messages[index];
    // final replyText = 'Re:${repliedMessage['text']}';
    // _textEditingController.text = replyText;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  padding: const EdgeInsets.all(5),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileSender()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/jjk.jpg'),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileSender()));
                  },
                  child: const Text('Marrion'),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
            ),
          ),
          PopupMenuButton(itemBuilder: (context) {
            List<PopupMenuEntry<Object>> list = [];
            list.add(const PopupMenuItem(
              value: "bloquer",
              child: Text('bloquer'),
            ));

            list.add(PopupMenuItem(
                value: 'Afficher profil',
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileSender()));
                  },
                  child: const Text('Afficher profil'),
                )));

            list.add(PopupMenuItem(
                value: 'parametre discussion',
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TchatSetting()));
                  },
                  child: const Text('parametre discussion'),
                )));
            return list;
          })
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final istextMessage =
                        _messages[index].messageType == MessageType.text;
                    final isMe = _messages[index].isMe;
                    return istextMessage
                        ? MessageBubble(
                            isAudio: false,
                            isImage: false,
                            isVideo: false,
                            isMee: isMe,
                            message: _messages[index],
                          )
                        : MessageBubble(
                            message: _messages[index],
                            isMee: isMe,
                            isImage: true,
                            isVideo: true,
                            isAudio: true);
                  })),
          const Divider(
            height: 15,
          ),
          Container(
            child: const BottoSection(),
          )
        ],
      ),
    ));
  }
}

class BottoSection extends StatefulWidget {
  const BottoSection({super.key});

  @override
  State<BottoSection> createState() => _BottoSectionState();
}

class _BottoSectionState extends State<BottoSection> {
  final List<Message> _messages = [];

  final TextEditingController _textEditingController = TextEditingController();

  void _sendmessage(String text) {
    setState(() {
      final message = {
        'text': text,
        'isMe': true,
        'timestamp': DateTime.now().toString(),
      };
      //  _messages.add(message);
    });

    _textEditingController.clear();
  }

  void _deleteMessage(int index) {
    setState(() {
      _messages.remove(index);
    });
  }

  void _replyToMessage(int index) {
    final repliedMessage = _messages[index];
    // final replyText = 'Re:${repliedMessage['text']}';
    //_textEditingController.text = replyText;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: BottomAppBar(
        elevation: 12,
        color: Colors.black,
        child: Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  //gerer l'envoie du message vocal
                },
                icon: Icon(Icons.keyboard_voice),
              ),
              Expanded(
                  child: TextField(
                controller: _textEditingController,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Saisissez votre message..',
                ),
              )),
              //Bouton de la zone de saisie du message

              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_emotions,
                    color: Colors.amber,
                  )),

              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sticky_note_2_outlined)),
              IconButton(
                  onPressed: () {
                    String message = _textEditingController.text.trim();
                    if (message.isNotEmpty) {
                      _sendmessage(message);
                    }
                  },
                  icon: const Icon(Icons.send))
            ],
          ),
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final String senderId;
  final String receiverId;
  final DateTime sentTime;
  final bool isMe;
  final MessageType messageType;

  const Message(
      {required this.text,
      required this.senderId,
      required this.receiverId,
      required this.sentTime,
      required this.isMe,
      required this.messageType});
}

enum MessageType {
  text,
  image,
  video,
  audio,
}

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {super.key,
      required this.message,
      required this.isMee,
      required this.isImage,
      required this.isVideo,
      required this.isAudio});
  final Message message;
  final bool isMee;
  final bool isImage;
  final bool isVideo;
  final bool isAudio;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMee ? Alignment.topLeft : Alignment.topRight,
      child: Container(
          decoration: isMee
              ? const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(29)))
              : const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(29))),
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                isMee ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text(
                message.text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          )),
    );
  }
}
