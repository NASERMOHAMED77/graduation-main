import 'package:bloc/bloc.dart';
import 'package:graduation/features/home/data/repos/home_repo.dart';
import 'cubit_get_product_state.dart';

class CubitGetProduct extends Cubit<StoreStates> {
  CubitGetProduct(this.homeRepo) : super(GetProductsIntial());

  final HomeRepo homeRepo;

  Future<void> ProductInStore() async {
    emit(GetStoreLoading());

    var result = await homeRepo.ProductInStor();

    result.fold(
      (failure) {
        emit(GetStoreFailure(massages: failure.toString()));
      },
      (products) {
        emit(GetProductsSucess(product: products));
      },
    );
  }
}
