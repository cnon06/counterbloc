import 'package:flutter_bloc/flutter_bloc.dart';
import 'counterevent.dart';
import 'counterstate.dart';



class CounterBloc extends Bloc<CounterEvent, CounterState> {
   CounterBloc() : super(const CounterInitial(initialValue: 0)) {
    on<IncreaseCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1));
    });
    on<DecreaseCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1));
    });
  }

}
