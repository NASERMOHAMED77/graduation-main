import 'package:dartz/dartz.dart';
import 'package:graduation/core/errors/failuer.dart';
import 'package:graduation/core/utils/ApiService.dart';
import 'package:graduation/features/home/data/Models/product_in_store/product_in_store.dart';
import 'package:graduation/features/home/data/Models/product_model.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';
import 'package:graduation/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final Apiservice apiservice;

  HomeRepoImp(this.apiservice);
  @override
  Future<Either<Failure, List<CategoryModel>>> TopCategories() async {
    try {
      var response = await apiservice.get(
          endPoint:
              'Category');
      List<CategoryModel> category = [];
      for (var item in response.data) {
        category.add(CategoryModel.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductInStore>>> BestDeals() async {
    try {
      var response = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in response.data) {
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
      var response = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in response.data) {
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
      var response = await apiservice.get(
          endPoint:
              'http://ma7aliapigp.runasp.net/api/Store/GetProductsInStore/storeId');
      List<ProductInStore> category = [];
      for (var item in response.data) {
        category.add(ProductInStore.fromJson(item));
      }
      return right(category);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> ProductInStor() async {
    try {
      final data = await apiservice.get(endPoint: 'StoreProduct/GetProducts');
      print("data");
      List<ProductModel> products = [];

      for (var item in data.data) {
        products.add(ProductModel.fromJson(item));
      }
      print(products);
      return right(products);
    } catch (e) {
      print(e.toString());
      return left(ServerFailure());
    }
  }
}
