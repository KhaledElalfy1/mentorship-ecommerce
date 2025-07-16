import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';
import 'package:mentorship_ecommerce/features/home/domain/use_cases/recommended_products_use_case.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_state.dart';

class RecommendedProductsCubit extends Cubit<RecommendedProductsState> {
  final RecommendedProductsUseCase _recommendedProductsUseCase;

  int _skips = 0;
  final int _limit = 10;
  bool isLoading = false;
  bool hasMore = true;
 final  List<ProductEntity> _visibleproducts = [];
   List<ProductEntity> _allproducts = [];
  RecommendedProductsCubit(this._recommendedProductsUseCase) : super(const RecommendedProductsState.initial());
  Future<void> getRecommendedProducts() async {
    emit(const RecommendedProductsState.loading());
    final response = await _recommendedProductsUseCase.getRecommendedProducts();
    response.fold(
        (failure) => emit(
              RecommendedProductsState.error(failure),
            ), (products) {

      _allproducts = products;
      _visibleproducts.clear();
      _skips = 0;
      hasMore = true;
      loadMore();
      
    });
  }

  void loadMore() {
    if (!hasMore) return;
    final start = _skips * _limit;
    final end = start + _limit;
    if (start < _allproducts.length) {
      final newProducts = _allproducts.sublist(start, end > _allproducts.length ? _allproducts.length : end);
      _visibleproducts.addAll(newProducts);
      _skips++;
    if (end >= _allproducts.length) hasMore = false;
    }
    emit(RecommendedProductsState.success(_visibleproducts, hasMore));
  }
}
