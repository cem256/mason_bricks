import '../data_source/remote/login_remote_data_source.dart';
import '../../domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl({required LoginRemoteDataSource loginRemoteDataSource})
      : _loginRemoteDataSource = loginRemoteDataSource;

  final LoginRemoteDataSource _loginRemoteDataSource;

  @override
  Future<void> loginWithEmailAndPassword() async {
    await _loginRemoteDataSource.loginWithEmailAndPassword();
  }
}
