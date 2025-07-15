import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/home/domain/use_cases/recommended_products_use_case.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_state.dart';

class RecommendedProductsCubit extends Cubit<RecommendedProductsState> {
  final RecommendedProductsUseCase _recommendedProductsUseCase;
  RecommendedProductsCubit(this._recommendedProductsUseCase) : super(const RecommendedProductsState.initial());
  Future<void> getRecommendedProducts() async {
    emit(const Loading());
    final response = await _recommendedProductsUseCase.getRecommendedProducts();
    response.fold(
      (failure) => emit(
        Error(
          Failure(error: failure.error),
        ),
      ),
      (products) => emit(
        Success(products),
      ),
    );
  }
}
