// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {}

class CounterStateInitial extends CounterState {
  final int counter;
  CounterStateInitial({required this.counter});
  @override
  List<Object?> get props => [counter];
}

class CounterStateUpdated extends CounterState {
  final int counter;
  CounterStateUpdated({required this.counter});
  @override
  List<Object?> get props => [counter];
}
