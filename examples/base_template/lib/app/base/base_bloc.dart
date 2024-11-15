import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, T> extends Bloc<E, T> {
  BaseBloc(super.state);
}
