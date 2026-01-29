import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  final String counter;
  const MainWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade200,
            offset: Offset(-2, 2),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.blueGrey.shade200,
            offset: Offset(2, -2),
            spreadRadius: 3,
            blurRadius: 10,
          ),
        ],
        borderRadius: .circular(12),
      ),
      child: Center(
        child: Text(counter, style: TextStyle(fontWeight: .bold, fontSize: 25)),
      ),
    );
  }
}
