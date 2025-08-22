import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship_ecommerce/core/api/dio_consumer.dart';
import 'package:mentorship_ecommerce/features/home/data/repos/home_repo_impl.dart';
import 'package:mentorship_ecommerce/features/home/domain/repos/home_repo.dart';
import 'package:mentorship_ecommerce/features/home/domain/use_cases/recommended_products_use_case.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_cubit.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  // Register Dio and DioConsumer
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: getIt()));

  // Register Repos
  getIt.registerLazySingleton<HomeRepo>(() =>HomeRepoImpl( getIt()));
  // Register Use Cases
  getIt.registerLazySingleton<RecommendedProductsUseCase>(() =>RecommendedProductsUseCase( getIt()));

  // Register Cubits
  getIt.registerFactory<RecommendedProductsCubit>(() => RecommendedProductsCubit(getIt()));

}
