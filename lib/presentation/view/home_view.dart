import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Bloc Pattern Demo', style: TextStyle(fontWeight: .bold)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
      ),
    );
  }
}
