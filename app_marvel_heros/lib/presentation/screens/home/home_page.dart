import 'package:app_marvel_heros/presentation/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          // selectedItemColor: context.secondColor,
          // unselectedItemColor: context.greyColor,
          onTap: controller.goToPage,
          currentIndex: controller.pageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Filmes'),
            // BottomNavigationBarItem(
            //     // icon: Icon(GeekPlusIcons.heart_empty), label: 'Favoritos'),
            //      icon: Icon(GeekPlusIcons.heart_empty), label: 'Favoritos'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.logout_outlined), label: 'Sair')
          ],
        );
      }),
      body: Navigator(
        initialRoute: '/movies',
        key: Get.nestedKey(HomeController.NAVIATOR_KEY),
        onGenerateRoute: (settings) {
          if (settings.name == '/movies') {
            return GetPageRoute(
              settings: settings,
              // page: () => MoviesPage(),
              // binding: MoviesBindings()
            );
          }
          if (settings.name == '/favorites') {
            return GetPageRoute(
              settings: settings,
              // page: () => FavoritesPage(),
              // binding: FavoritesBindings()
            );
          }
          return null;
        },
      ),
    );
  }
}
