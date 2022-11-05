import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const _InitialState()) {
    //TODO: Define event handlers
    on<_Initialized>(_onInitialized);
  }
  //TODO: Implement event handlers
  void _onInitialized(_Initialized event, Emitter<CounterState> emit) {}
}
