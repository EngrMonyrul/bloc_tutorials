import 'package:bloc/bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementEvent>(_incrementCounter);
    on<DecrementEvent>(_decrementCounter);
  }

  void _incrementCounter(CounterEvent event, Emitter<CounterState> emit) {
    final amount = (state.count ?? 0) + 1;
    emit(state.copyWith(count: amount));
  }

  void _decrementCounter(CounterEvent event, Emitter<CounterState> emit) {
    final amount = (state.count ?? 0) - 1;
    emit(state.copyWith(count: amount));
  }
}
