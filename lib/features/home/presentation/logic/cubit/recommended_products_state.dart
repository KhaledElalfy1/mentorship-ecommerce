import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';

import '../../../../../core/errors/failure.dart';

part 'recommended_products_state.freezed.dart';

@freezed
class RecommendedProductsState<T> with _$RecommendedProductsState<T> {
  const factory RecommendedProductsState.initial() = _Initial;
  const factory RecommendedProductsState.loading() = Loading;
  const factory RecommendedProductsState.success(List<ProductEntity> products, bool hasMore) = Success<T>;
  const factory RecommendedProductsState.error(Failure failure) = Error<T>;
}
