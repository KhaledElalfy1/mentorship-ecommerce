import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_item_model.dart';

abstract class RemoteDataSource {
  Future<Either<String, List<FeaturedProductItemModel>>>
      getFeaturedProducts();
}
