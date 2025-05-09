import 'package:equatable/equatable.dart';
import 'package:graduation/features/home/data/Models/product_model.dart';

abstract class StoreStates extends Equatable {
  const StoreStates();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetProductsIntial extends StoreStates {}

class GetProductsSucess extends StoreStates {
  final List<ProductModel> product;
  const GetProductsSucess({required this.product});
}

class GetStoreLoading extends StoreStates {}

class GetStoreFailure extends StoreStates {
  final String massages;
  const GetStoreFailure({required this.massages});
}
