import 'package:app_marvel_heros/domain/interfaces/repositories/login_repository.dart';
import 'package:app_marvel_heros/domain/interfaces/services/login_service.dart';
import 'package:app_marvel_heros/infrastructure/repositories/login_repository_impl.dart';
import 'package:app_marvel_heros/infrastructure/services/auth_service.dart';
import 'package:app_marvel_heros/infrastructure/services/login_service_impl.dart';
import 'package:app_marvel_heros/infrastructure/services/rest_clients/marvel_rest_client.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(), fenix: true);
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
    Get.put(AuthService()).init();
    // Get.lazyPut<HerosRepository>(() => HerosRepositoryImpl(restClient: Get.find()), fenix: true);
    // Get.lazyPut<HerosService>(() => HerosServiceImpl(moviesRepository: Get.find()), fenix: true);
  }
}
