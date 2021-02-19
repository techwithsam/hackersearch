import 'package:get_it/get_it.dart';
import 'service/api.dart';
import 'service/baseurl.dart';

GetIt locator = GetIt.instance;

void locatorPage() {

  locator.registerLazySingleton(() => BaseUrl());
  locator.registerLazySingleton(() => Api());

}