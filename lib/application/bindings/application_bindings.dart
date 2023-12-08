import 'package:dw4_app_filmes/application/repositories/movies/movies_repository.dart';
import 'package:dw4_app_filmes/application/repositories/movies/movies_repository_impl.dart';
import 'package:dw4_app_filmes/application/rest_client/rest_client.dart';
import 'package:dw4_app_filmes/application/services/movies/movies_service.dart';
import 'package:dw4_app_filmes/application/services/movies/movies_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(), fenix: true);

    Get.lazyPut<MoviesRepository>(
      () => MoviesRepositoryImpl(restClient: Get.find()),
      fenix: true,
    );
    Get.lazyPut<MoviesService>(
      () => MoviesServiceImpl(moviesRepository: Get.find()),
      fenix: true,
    );
  }
}
