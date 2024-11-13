import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(super.state);

  final cancelToken = CancelToken();

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }

  @override
  Future<void> close() async {
    cancelToken.cancel();
    return super.close();
  }
}
