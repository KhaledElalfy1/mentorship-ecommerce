import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship_ecommerce/core/api/api_consumer.dart';
import 'package:mentorship_ecommerce/core/api/dio_consumer.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source_impl.dart';
import 'package:mentorship_ecommerce/features/home/data/repos/home_repo_impl.dart';
import 'package:mentorship_ecommerce/features/home/data/repository/home_repository_impl.dart';
import 'package:mentorship_ecommerce/features/home/domain/repos/home_repo.dart';
import 'package:mentorship_ecommerce/features/home/domain/repository/home_repository.dart';
import 'package:mentorship_ecommerce/features/home/domain/use_cases/recommended_products_use_case.dart';
import 'package:mentorship_ecommerce/features/home/domain/usecases/get_featured_products_usecase.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  // API Init
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );
  getIt.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(dio: getIt<Dio>()),
  );
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: getIt()));
 // home service locator 
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt<ApiConsumer>()),
  );
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<HomeRemoteDataSource>()),
  );
    // Register Repos
  getIt.registerLazySingleton<HomeRepo>(() =>HomeRepoImpl( getIt()));
    // Register Use Cases
  getIt.registerLazySingleton<GetFeaturedProductsUseCase>(
    () => GetFeaturedProductsUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton<RecommendedProductsUseCase>(() =>RecommendedProductsUseCase( getIt()));

    // Register Cubits
  getIt.registerFactory<RecommendedProductsCubit>(() => RecommendedProductsCubit(getIt()));
}
