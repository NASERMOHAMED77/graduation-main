import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store.dart';
import 'package:graduation/features/store_portfollio/data/data_sources/repo_store_imp.dart';
import 'package:graduation/features/store_portfollio/presentation/manager/store_port_states.dart';

class StorePortCubit extends Cubit<StorePortStates> {
  StorePortCubit(this.repoStore) : super(GetStorePortLoading());
  final RepoStore repoStore;
  Future<void> get_store(int id) async {
    try {
      var result = await RepoStoreImp().get_store(id);
      emit(GetStorePortSucess(storeModel: result!));
    } catch (e) {
      emit(GetStorePortFailure(massages: e.toString()));
    }
  }
}

// Future<void> fetchBestSellerBooks() async {
//     var result = await homeRepo.fetchBestSellerBooks();
//     result.fold((failure) {
//       emit(BestSellerFailure(massages: failure.errMessage));
//     }, (books) {
//       emit(BestSellerSuccess(books: books));
//     });
//   }