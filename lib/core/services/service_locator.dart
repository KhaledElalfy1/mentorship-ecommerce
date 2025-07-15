import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship_ecommerce/core/api/api_consumer.dart';
import 'package:mentorship_ecommerce/core/api/dio_consumer.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source_impl.dart';
import 'package:mentorship_ecommerce/features/home/data/repository/home_repository_impl.dart';
import 'package:mentorship_ecommerce/features/home/domain/repository/home_repository.dart';
import 'package:mentorship_ecommerce/features/home/domain/usecases/get_featured_products_usecase.dart';

final getIt = GetIt.instance;

void setup() {
  // API Init
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );
  getIt.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(dio: getIt<Dio>()),
  );
 
 // home service locator 
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt<ApiConsumer>()),
  );
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<HomeRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetFeaturedProductsUseCase>(
    () => GetFeaturedProductsUseCase(getIt<HomeRepository>()),
  );
}
