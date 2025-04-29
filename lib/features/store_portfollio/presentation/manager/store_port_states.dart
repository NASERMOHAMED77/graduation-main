import 'package:equatable/equatable.dart';
import 'package:graduation/features/store_portfollio/data/models/store_model.dart';

abstract class StorePortStates extends Equatable {
  const StorePortStates();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetStorePortSucess extends StorePortStates {
  final StoreModel storeModel;
  const GetStorePortSucess({required this.storeModel});
}

class GetStorePortLoading extends StorePortStates {}

class GetStorePortFailure extends StorePortStates {
  final String massages;
  const GetStorePortFailure({
    required this.massages,
  });
}
