import 'package:app_marvel_heros/domain/interfaces/services/login_service.dart';
import 'package:app_marvel_heros/infrastructure/ultils/loader_mixin.dart';
import 'package:app_marvel_heros/infrastructure/ultils/messages_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel.info(
          title: 'Sucesso', message: 'Login Realizado com sucesso'));
    } catch (e, s) {
      print(e.toString());
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Login Error',
          message: 'Erro ao realizar o login' + e.toString()));
    }
  }
}
