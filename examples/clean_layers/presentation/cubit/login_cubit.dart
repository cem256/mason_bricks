import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/login_with_email_and_password_use_case.dart';

part 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required LoginWithEmailAndPasswordUseCase  loginWithEmailAndPasswordUseCase})
      : _loginWithEmailAndPasswordUseCase = loginWithEmailAndPasswordUseCase,
        super(const LoginState());

  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

  Future<void> signInWithEmailAndPassword() async {
    await _loginWithEmailAndPasswordUseCase.call();
  }
}
