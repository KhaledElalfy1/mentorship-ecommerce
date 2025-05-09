import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/api/api_consumer.dart';
import 'package:mentorship_ecommerce/core/api/end_points.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/remote_data_source.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_item_model.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiConsumer _apiConsumer;

  RemoteDataSourceImpl(this._apiConsumer);
  @override
  Future<Either<String, List<FeaturedProductItemModel>>>
      getFeaturedProducts() async {
    try {
      final response = await _apiConsumer.get(EndPoints.featuredProducts);
      List<FeaturedProductItemModel> productsList = [];
      for (var products in response) {
        productsList.add(FeaturedProductItemModel.fromJson(products));
      }
      return right(productsList);
    } catch (e) {
      return left(e.toString());
    }
  }
}
