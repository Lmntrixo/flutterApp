import 'package:flutter/material.dart';

class ProfileUserLetters extends StatefulWidget {
  const ProfileUserLetters({super.key});

  @override
  State<ProfileUserLetters> createState() => _ProfileUserLettersState();
}

class _ProfileUserLettersState extends State<ProfileUserLetters> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}