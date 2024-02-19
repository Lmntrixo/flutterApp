import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final events = [
    {"subject": "daiki Aomine", "avatar": "mec", "date": "08h34"},
    {"subject": "Sukuna", "avatar": "mec", "date": "12h56"},
    {"subject": "kimimaru", "avatar": "mec", "date": "11h45"},
    {"subject": "Satoru Gojo", "avatar": "mec", "date": "09h23"},
    {"subject": "Meliodas", "avatar": "mec", "date": "09h05"},
    {"subject": "Akagami no shanks", "avatar": "mec", "date": "09h34"},
    {"subject": "song jin woo", "avatar": "mec", "date": "09h34"},
    {"subject": "Saitama", "avatar": "bolos", "date": "11h34"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),

      body: Center(
        
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            final subject = event['subject'];
            //final date = event['date'];
            return  Card(
              child: ListTile(
                leading: const FlutterLogo(size: 56.0),
                title: Text('$subject'),
                subtitle: const Text('conference sur le developement informatique'),
                trailing: const Icon(Icons.more_vert),
              ),
            );
          },
        ),
      ),
      
      
    );
    
  }
}
