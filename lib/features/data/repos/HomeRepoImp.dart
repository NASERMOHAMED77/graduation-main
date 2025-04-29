import 'package:dartz/dartz.dart';
import 'package:graduation/core/errors/failuer.dart';
import 'package:graduation/core/utils/ApiService.dart';
import 'package:graduation/features/data/repos/home_repo.dart';
import 'package:graduation/features/home/data/Models/product_in_store/product_in_store.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';

class HomeRepoImp implements HomeRepo {
  final Apiservice apiservice;

  HomeRepoImp(this.apiservice);
  @override
  Future<Either<Failure, List<StoreProductGetCategory>>> TopCategories() async {
    try {
      var data = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetCategoriesInStore/storeId');
      List<StoreProductGetCategory> category = [];
      for (var item in data['item']) {
        category.add(StoreProductGetCategory.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductInStore>>> BestDeals() async {
    try {
      var data = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in data['item']) {
        category.add(ProductInStore.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductInStore>>> weeklyPopularProducts() async {
    try {
      var data = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in data['item']) {
        category.add(ProductInStore.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductInStore>>> MostSellingProduct() async {
    // TODO: implement MostSellingProduct
    try {
      var data = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in data['item']) {
        category.add(ProductInStore.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductInStore>>> ProductInStor() async {
    // TODO: implement ProductInStor
    try {
      var data = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in data['item']) {
        category.add(ProductInStore.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
