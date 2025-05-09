import 'package:equatable/equatable.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';

abstract class GetCategoriesStates extends Equatable {
  const GetCategoriesStates();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetCategoriesIntial extends GetCategoriesStates {}

class  GetCategoriesSucess extends GetCategoriesStates {
  final List<CategoryModel> category;
  const  GetCategoriesSucess({required this.category});
}

class GetCategoriesLoading extends GetCategoriesStates {}

class GetCategoriesFailure extends GetCategoriesStates {
  final String massages;
  const GetCategoriesFailure({required this.massages});
}
