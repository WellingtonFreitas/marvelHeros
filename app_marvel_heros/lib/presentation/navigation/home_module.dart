import 'package:app_marvel_heros/presentation/navigation/module.dart';
import 'package:app_marvel_heros/presentation/screens/home/home_bindings.dart';
import 'package:app_marvel_heros/presentation/screens/home/home_page.dart';
import 'package:get/get.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: '/home', page: () => const HomePage(), binding: HomeBindings())
  ];
}
