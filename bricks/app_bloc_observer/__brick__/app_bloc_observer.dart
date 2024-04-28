import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

final class ApppBlocObserver extends BlocObserver {
  ApppBlocObserver({
    this.enableOnEvent = true,
    this.enableOnChange = true,
    this.enableOnTransition = true,
    this.enableOnError = true,
    this.enableOnClose = true,
    this.enableOnCreate = true,
  });

  final bool enableOnEvent;
  final bool enableOnChange;
  final bool enableOnTransition;
  final bool enableOnError;
  final bool enableOnClose;
  final bool enableOnCreate;

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (enableOnEvent) {
      log('${bloc.runtimeType} $event');
    }
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (enableOnChange) {
      log('${bloc.runtimeType} $change');
    }
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    super.onTransition(bloc, transition);
    if (enableOnTransition) {
      log('${bloc.runtimeType} $transition');
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (enableOnError) {
      log('${bloc.runtimeType} $error');
    }
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    if (enableOnClose) {
      log('Bloc closed ${bloc.runtimeType}}');
    }
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    if (enableOnCreate) {
      log('Bloc created ${bloc.runtimeType}}');
    }
  }
}
