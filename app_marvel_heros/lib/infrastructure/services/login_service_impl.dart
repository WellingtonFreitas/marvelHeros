import 'package:app_marvel_heros/domain/interfaces/repositories/login_repository.dart';
import 'package:app_marvel_heros/domain/interfaces/services/login_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginServiceImpl implements LoginService {
  final LoginRepository _loginRepository;
  LoginServiceImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future<UserCredential> login() => _loginRepository.login();

  @override
  Future<void> logout() => _loginRepository.logout();
}
