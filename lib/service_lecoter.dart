import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation/core/utils/ApiService.dart';
import 'package:graduation/features/home/data/repos/HomeRepoImp.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store_imp.dart';

var getIt = GetIt.instance;
void setupService() {
  Apiservice apiservice;
  getIt.registerSingleton<RepoStoreImp>(RepoStoreImp());
  getIt.registerSingleton<Apiservice>(Apiservice(Dio()));

  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<Apiservice>()));
}
