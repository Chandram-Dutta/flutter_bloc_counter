import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(initialCounter: 0));

  void increment() =>
      emit(CounterState(initialCounter: state.initialCounter + 1));
  void decrement() =>
      emit(CounterState(initialCounter: state.initialCounter - 1));
}
