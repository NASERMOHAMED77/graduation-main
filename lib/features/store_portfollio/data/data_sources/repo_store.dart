import 'package:graduation/features/store_portfollio/data/models/store_model.dart';

abstract class RepoStore {
  Future<StoreModel?> get_store(int id);
}
