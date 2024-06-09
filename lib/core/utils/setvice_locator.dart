import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sqfilte_test/features/data/data_displayer_impl.dart';

import '../helper/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<DataDisplayerImpl>(
      DataDisplayerImpl(getIt.get<ApiService>()));
}
