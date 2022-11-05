part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  // TODO: Add events
  const factory CounterEvent.initialized() = _Initialized;
}
