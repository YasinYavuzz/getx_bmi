import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_bmi/modules/detail/detail_binding.dart';
import 'package:getx_bmi/modules/detail/detail_screen.dart';
import 'package:getx_bmi/modules/home/home_binding.dart';
import 'package:getx_bmi/modules/home/home_screen.dart';
import 'package:getx_bmi/modules/splash/splash_binding.dart';
import 'package:getx_bmi/modules/splash/splash_screen.dart';
part  'app_routes.dart';


class AppPages{
  static final routes_page = [
    GetPage(name: Routes.HOME, page: () => const HomeScreen(),binding: HomeBindings()),
    // GetPage(name: Routes.SPLASH, page: () => const SplashScreen(),binding: SplashBindings()),
    GetPage(name: Routes.DETAIL, page: () => const DetailScreen(),binding: DetailsBinding()),
  ];
}