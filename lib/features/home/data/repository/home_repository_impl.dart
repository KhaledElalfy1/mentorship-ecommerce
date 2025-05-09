import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';
import 'package:mentorship_ecommerce/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<String, List<FeaturedProducts>>> getFeaturedProducts() async {
    return await _remoteDataSource.getFeaturedProducts();
  }
}
