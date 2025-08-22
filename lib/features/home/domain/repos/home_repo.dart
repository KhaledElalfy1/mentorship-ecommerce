import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';


abstract class HomeRepo {
  // Define the methods and properties for the Home repository
  Future<Either<Failure, List<ProductEntity>>> getRecommendedProducts();

}   