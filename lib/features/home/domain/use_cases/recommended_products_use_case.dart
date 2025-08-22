// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';
import 'package:mentorship_ecommerce/features/home/domain/repos/home_repo.dart';

class RecommendedProductsUseCase {
  final HomeRepo _homeRepo;
  RecommendedProductsUseCase(
     this._homeRepo,
  );

  Future<Either<Failure, List<ProductEntity>>> getRecommendedProducts() async {
    return await _homeRepo.getRecommendedProducts();
  }
}
 