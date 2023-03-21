import 'package:get/get.dart';
import '../menu/calculagraph/time_counter_view.dart';
import '../menu/dy/dy.dart';
import './routes.dart';
import '../menu/home.dart';

class Pages {
  static const initIAL = Routes.home;

  static final routes = [
    GetPage(name: Routes.home, page: () => const MyHomePage()),
    GetPage(name: Routes.timeCounter, page: () => const TimeCounterView()),
    GetPage(name: Routes.dy, page: () => const DYweb())
  ];
}
