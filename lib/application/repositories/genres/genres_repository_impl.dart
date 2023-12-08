import 'package:dw4_app_filmes/application/rest_client/rest_client.dart';
import 'package:dw4_app_filmes/models/genre_model.dart';

import './genres_repository.dart';

class GenresRepositoryImpl extends GenresRepository {
  final RestClient _restClient;

  GenresRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<List<GenreModel>> getGenres() async {
    final result = await _restClient.get<List<GenreModel>>(
      '/genre/movie/list',
      query: {
        'api_key': '',
        'language': 'pt-br'
      },
      decoder: (data) {
        final resultData = data['genres'];
        if (resultData != null) {
          return resultData
              .map<GenreModel>((g) => GenreModel.fromMap(g))
              .toList();
        }
        return <GenreModel>[];
      },
    );

    if (result.hasError) {
      print(result.statusText);
      throw Exception('Erro ao buscar generos');
    }

    return result.body ?? <GenreModel>[];
  }
}
