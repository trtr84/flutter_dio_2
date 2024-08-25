import 'package:dio/dio.dart';
import 'package:flutter_dio_2/users.dart';

class UsersData {
  final dio = Dio();
  Future<List<Users>> getUsers() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    try {
      if (response.statusCode == 200) {
        List<Users> users = (response.data as List).map(
          (e) {
            return Users.fromMap(e as Map<String, dynamic>);
          },
        ).toList();

        return users;
      } else {
        throw Exception('An error has occurred');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
