import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, isIncrement: false));

  void increament() => emit(
      CounterState(counterValue: state.counterValue + 1, isIncrement: true));
  void decreament() => emit(
      CounterState(counterValue: state.counterValue - 1, isIncrement: false));
}
