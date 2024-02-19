import 'package:flutter/material.dart';

class ProfileUserFollowers extends StatefulWidget {
  const ProfileUserFollowers({super.key});

  @override
  State<ProfileUserFollowers> createState() => _ProfileUserFollowersState();
}

class _ProfileUserFollowersState extends State<ProfileUserFollowers> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}