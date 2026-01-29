import 'package:bloc_pattern/presentation/blocs/counter_bloc.dart';
import 'package:bloc_pattern/presentation/blocs/counter_event.dart';
import 'package:bloc_pattern/presentation/blocs/counter_state.dart';
import 'package:bloc_pattern/presentation/view/widgets/main_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterStateInitial) {
                  return MainWidget(counter: state.counter.toString());
                }
                if (state is CounterStateUpdated) {
                  return MainWidget(counter: state.counter.toString());
                } else {
                  return SizedBox();
                }
              },
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: .center,
              children: [
                MaterialButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrease());
                  },
                  color: Colors.red,
                  child: Icon(CupertinoIcons.minus),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrease());
                  },
                  color: Colors.green,
                  child: Icon(CupertinoIcons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
