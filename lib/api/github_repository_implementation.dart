import 'package:dio/dio.dart';
import 'package:third/api/repository_interface.dart';
import 'package:third/models/repository_model.dart';

class GitHubRepositoryImplementation implements RepositoryInterface {
  final Dio dio;
  GitHubRepositoryImplementation({required this.dio});

  @override
  Future<Repository> getRepositories(String keyword) async {
    final url =
        'https://api.github.com/search/repositories?q=$keyword&per_page=100';

    late Response response;

    try {
      response = await dio.get(url);
    } catch (e) {
      rethrow;
    }

    return Repository.fromJson(response.data);
  }
}
