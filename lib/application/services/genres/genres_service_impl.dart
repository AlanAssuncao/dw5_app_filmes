import 'package:dw4_app_filmes/application/repositories/genres/genres_repository.dart';
import 'package:dw4_app_filmes/models/genre_model.dart';

import './genres_service.dart';

class GenresServiceImpl extends GenresService {
  final GenresRepository _genresRepository;

  GenresServiceImpl({required GenresRepository genresRepository})
      : _genresRepository = genresRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genresRepository.getGenres();
}
