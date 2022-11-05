import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_model.freezed.dart';
part 'counter_model.g.dart';

@freezed
class CounterModel with _$CounterModel {
  const factory CounterModel({
    required String placeholder,
  }) = _CounterModel;

  factory CounterModel.fromJson(Map<String, dynamic> json) => _$CounterModelFromJson(json);
}