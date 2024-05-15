import 'package:app_marvel_heros/application/modules/module.dart';
import 'package:app_marvel_heros/modules/splash/app_geek_plus/lib/Modules/splash/splash_page.dart';
import 'package:app_marvel_heros/modules/splash/splash_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/', page: () => SplashPage(), binding: SplashBindings()),
  ];
}
