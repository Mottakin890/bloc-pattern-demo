import 'package:bloc_pattern/presentation/blocs/counter_event.dart';
import 'package:bloc_pattern/presentation/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterStateInitial(counter: 0)) {
    on<CounterIncrease>((event, emit) {
      counter++;
      emit(CounterStateUpdated(counter: counter));
    });

    on<CounterDecrease>((event, emit) {
      counter--;
      emit(CounterStateUpdated(counter: counter));
    });
  }
}
