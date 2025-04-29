import 'package:dartz/dartz.dart';
import 'package:graduation/core/errors/failuer.dart';
import 'package:graduation/features/home/data/Models/product_in_store/product_in_store.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<StoreProductGetCategory>>> TopCategories();
  Future<Either<Failure, List<ProductInStore>>> BestDeals();
  Future<Either<Failure, List<ProductInStore>>> weeklyPopularProducts();
  Future<Either<Failure, List<ProductInStore>>> MostSellingProduct();
  Future<Either<Failure, List<ProductInStore>>> ProductInStor();
}
