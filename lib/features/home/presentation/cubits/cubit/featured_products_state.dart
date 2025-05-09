import 'package:equatable/equatable.dart';
import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';

sealed class FeaturedProductsState extends Equatable {
  const FeaturedProductsState();

  @override
  List<Object> get props => [];
}

final class FeaturedProductsInitial extends FeaturedProductsState {}

final class FeaturedProductsLoading extends FeaturedProductsState {}

final class FeaturedProductsSuccess extends FeaturedProductsState {
  final List<FeaturedProducts> products;

  const FeaturedProductsSuccess({required this.products});
}

final class FeaturedProductsFailure extends FeaturedProductsState {
  final String message;

 const FeaturedProductsFailure({required this.message});
}
