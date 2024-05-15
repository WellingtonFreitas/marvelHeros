import 'package:app_marvel_heros/presentation/navigation/module.dart';
import 'package:app_marvel_heros/presentation/screens/login/login_bindings.dart';
import 'package:app_marvel_heros/presentation/screens/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBindings(),
    )
  ];
}
