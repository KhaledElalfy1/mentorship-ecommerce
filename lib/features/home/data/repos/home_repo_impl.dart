import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/api/dio_consumer.dart';
import 'package:mentorship_ecommerce/core/api/end_points.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/home/data/mapper/products_mapper.dart';
import 'package:mentorship_ecommerce/features/home/data/models/recommended_product_model.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';
import 'package:mentorship_ecommerce/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final DioConsumer _dioConsumer;
 
  HomeRepoImpl(this._dioConsumer);

  @override
  Future<Either<Failure, List<ProductEntity>>> getRecommendedProducts() async {
    try {
      final recommendedProducts = await _dioConsumer.get(EndPoints.recommendedProductsEndPoint(id: 1)) as List;
      List<ProductEntity> productsEntityList = recommendedProducts
          .map(
            (product) => ProductsMapper.toProductEntity(
              Product.fromJson(product),
            ),
          )
          .toList();
      return Right(productsEntityList);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}
