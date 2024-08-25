import 'package:flutter_dio_2/users_data.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setup() {
  locator.registerLazySingleton<UsersData>(() => UsersData());
}
