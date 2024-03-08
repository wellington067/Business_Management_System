import 'package:dio/dio.dart';

class GitHubRepository {
  final Dio dio;

  GitHubRepository({required this.dio});

  getGitHubRepository() async {
    try {
      final response = await dio.get('https://api.github.com/users');
      return response.data;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
