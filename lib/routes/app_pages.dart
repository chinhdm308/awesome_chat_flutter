import 'package:awesome_chat/ui/home/home.dart';
import 'package:awesome_chat/ui/home/home_binding.dart';
import 'package:awesome_chat/ui/signin/signin_binding.dart';
import 'package:awesome_chat/ui/signin/signin_screen.dart';
import 'package:awesome_chat/ui/splash/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/sign_in',
      page: () => SignInScreen(),
      binding: SignInBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}

var appPages = [
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
  ),
  GetPage(
    name: '/sign_in',
    page: () => SignInScreen(),
    binding: SignInBinding(),
  ),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
    binding: HomeBinding(),
  ),
];
