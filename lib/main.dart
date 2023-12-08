import 'package:dw4_app_filmes/application/bindings/application_bindings.dart';
import 'package:dw4_app_filmes/application/ui/filmes_app_ui_config.dart';
import 'package:dw4_app_filmes/modules/home/home_module.dart';
import 'package:dw4_app_filmes/modules/login/login_module.dart';
import 'package:dw4_app_filmes/modules/movie_detail/movie_detail_module.dart';
import 'package:dw4_app_filmes/modules/splash/splash_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.tittle,
      initialBinding: ApplicationBindings(),
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
