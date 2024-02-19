import 'package:flutter/material.dart';

class HomeSalle extends StatefulWidget {
  const HomeSalle({super.key});

  @override
  State<HomeSalle> createState() => _HomeSalleState();
}

class _HomeSalleState extends State<HomeSalle> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: const Text('data'),
      ),
    );
  }
}
