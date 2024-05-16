import 'package:app_marvel_heros/presentation/navigation/module.dart';
import 'package:app_marvel_heros/presentation/screens/splash/splash_bindings.dart';
import 'package:app_marvel_heros/presentation/screens/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: '/', page: () => const SplashPage(), binding: SplashBindings()),
  ];
}
