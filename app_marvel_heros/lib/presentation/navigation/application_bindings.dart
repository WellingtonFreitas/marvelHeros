import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => RestClient(), fenix: true);
    // Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    // Get.lazyPut<LoginService>(() => LoginServiceImpl(loginRepository: Get.find()),fenix: true);
    // Get.put(AuthService()).init();
    // Get.lazyPut<HerosRepository>(() => HerosRepositoryImpl(restClient: Get.find()), fenix: true);
    // Get.lazyPut<HerosService>(() => HerosServiceImpl(moviesRepository: Get.find()), fenix: true);
  }
}
