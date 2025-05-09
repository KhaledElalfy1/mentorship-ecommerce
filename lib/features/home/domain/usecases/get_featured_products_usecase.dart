import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/usecase/usecase_interface.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';
import 'package:mentorship_ecommerce/features/home/domain/repository/home_repository.dart';

class GetFeaturedProductsUseCase
    implements UseCaseInterface<List<FeaturedProducts>, NoParam> {
  final HomeRepository _homeRepository;

  GetFeaturedProductsUseCase(this._homeRepository);
  @override
  Future<Either<String, List<FeaturedProducts>>> call(NoParam param) async {
    return await _homeRepository.getFeaturedProducts();
  }
}
