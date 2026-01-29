import 'package:bloc_pattern/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class BlocPattern extends StatelessWidget {
  const BlocPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView(), debugShowCheckedModeBanner: false);
  }
}
