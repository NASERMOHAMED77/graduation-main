import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/home/data/repos/home_repo.dart';
import 'package:graduation/features/home/presentation/manager/get_categories_cubit/cubit_get_categories_states.dart';

class CubitGetCategories extends Cubit<GetCategoriesStates> {
  CubitGetCategories(this.homeRepo) : super(GetCategoriesIntial());

  final HomeRepo homeRepo;

  Future<void> CategoriesInStore() async {
    emit(GetCategoriesLoading());

    var result = await homeRepo.TopCategories();

    result.fold(
      (failure) {
        emit(GetCategoriesFailure(massages: failure.toString()));
      },
      (categories) {
        emit(GetCategoriesSucess(category: categories));
      },
    );
  }
}
