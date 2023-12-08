import 'package:dw4_app_filmes/application/modules/module.dart';
import 'package:dw4_app_filmes/modules/home/home_bindings.dart';
import 'package:dw4_app_filmes/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    )
  ];
}
