part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState {
  const LoginState({this.status = LoginStatus.initial});

  final LoginStatus status;

}

