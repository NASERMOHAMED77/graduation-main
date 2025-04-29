import 'package:get_it/get_it.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store_imp.dart';

var getIt = GetIt.instance;
void setupService() {
  getIt.registerSingleton<RepoStoreImp>(RepoStoreImp());
}
