import 'package:get/get.dart';
import 'package:rick_and_morty_app/app/binding/home_binding.dart';
import 'package:rick_and_morty_app/app/routes/app_routes.dart';
import 'package:rick_and_morty_app/app/ui/pages/home/home_view.dart';
import 'package:rick_and_morty_app/app/ui/pages/splashscreen/splashscreen.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MyHomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => SplashScreenPage(),
    ),
  ];
}
