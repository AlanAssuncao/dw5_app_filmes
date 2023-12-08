import 'package:dw4_app_filmes/application/repositories/movies/movies_repository.dart';
import 'package:dw4_app_filmes/application/services/movies/movies_service.dart';
import 'package:dw4_app_filmes/models/movie_detail_model.dart';
import 'package:dw4_app_filmes/models/movie_model.dart';

class MoviesServiceImpl implements MoviesService {
  final MoviesRepository _moviesRepository;

  MoviesServiceImpl({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository;

  @override
  Future<List<MovieModel>> getPopularMovies() =>
      _moviesRepository.getPopularMovies();

  @override
  Future<List<MovieModel>> getTopRated() => _moviesRepository.getTopRated();

  @override
  Future<MovieDetailModel?> getDetail(int id) =>
      _moviesRepository.getDetail(id);
}
