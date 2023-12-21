import 'package:third/models/repository_model.dart';

abstract class RepositoryInterface {
  Future<Repository> getRepositories(String keyword);
}
