import 'package:app_marvel_heros/domain/interfaces/services/login_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static const NAVIATOR_KEY = 1;
  static const INDEX_PAGE_EXIT = 2;
  final LoginService _loginService;

  HomeController({required LoginService loginService})
      : _loginService = loginService;

  final _pages = ['/'];
  final _pageIndex = 0.obs;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_EXIT) {
      _loginService.logout();
    } else {
      Get.offNamed(_pages[page], id: NAVIATOR_KEY);
    }
  }
}
