import 'package:get/get.dart';
import './routes.dart';
import '../menu/home.dart';

class Pages {

  static const initIAL = Routes.home;

  static final routes = [
    GetPage(name: Routes.home, page: () => const MyHomePage())
  ];
}
