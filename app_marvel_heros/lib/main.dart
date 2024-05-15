import 'package:app_marvel_heros/infrastructure/ultils/marvel_heros_app_ui_config.dart';
import 'package:app_marvel_heros/presentation/navigation/login_module.dart';
import 'package:app_marvel_heros/presentation/navigation/splash_module.dart';
import 'package:app_marvel_heros/presentation/screens/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/navigation/application_bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  var theme = MarvelHerosAppUiConfig.lightTheme;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    changeTheme();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    changeTheme();
  }

  changeTheme() {
    var brightness = WidgetsBinding.instance!.window.platformBrightness;
    brightness == Brightness.dark
        ? theme = MarvelHerosAppUiConfig.darkTheme
        : theme = MarvelHerosAppUiConfig.lightTheme;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MarvelHerosAppUiConfig.title,
      initialBinding: ApplicationBindings(),
      theme: theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        // ...HomeModule().routers,
        // ...MovieDetailModule().routers,
      ],
    );
  }
}
