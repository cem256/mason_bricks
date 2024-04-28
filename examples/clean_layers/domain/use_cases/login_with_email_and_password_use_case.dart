import '../repository/login_repository.dart';

class LoginWithEmailAndPasswordUseCase{
  const LoginWithEmailAndPasswordUseCase({required LoginRepository loginRepository})
    :  _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

    Future<void> call() {
    return _loginRepository.loginWithEmailAndPassword();
  }
}
