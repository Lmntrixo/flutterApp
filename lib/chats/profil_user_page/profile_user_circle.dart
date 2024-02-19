import 'package:flutter/material.dart';

class ProfileUserCircle extends StatefulWidget {
  const ProfileUserCircle({super.key});

  @override
  State<ProfileUserCircle> createState() => _ProfileUserCircleState();
}

class _ProfileUserCircleState extends State<ProfileUserCircle> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}