import 'package:flutter/material.dart';

class ProfileUserPosts extends StatefulWidget {
  const ProfileUserPosts({super.key});

  @override
  State<ProfileUserPosts> createState() => _ProfileUserPostsState();
}

class _ProfileUserPostsState extends State<ProfileUserPosts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}