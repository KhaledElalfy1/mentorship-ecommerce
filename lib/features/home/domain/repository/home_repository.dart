import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';

abstract class HomeRepository {
  Future<Either<String, List<FeaturedProducts>>> getFeaturedProducts();
}
