import 'package:bloc_pattern/presentation/blocs/counter_bloc.dart';
import 'package:bloc_pattern/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPattern extends StatelessWidget {
  const BlocPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>  CounterBloc())
    ], child: MaterialApp(home: HomeView(), debugShowCheckedModeBanner: false));
  }
}
