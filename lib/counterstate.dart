
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial({required int initialValue}) : super(counter: initialValue);
}

class MyCounterState extends CounterState{
  const MyCounterState({required int counterValue}) : super(counter: counterValue);
}
