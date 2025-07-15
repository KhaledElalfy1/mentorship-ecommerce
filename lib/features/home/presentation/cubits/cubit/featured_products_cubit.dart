import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/usecase/usecase_interface.dart';
import 'package:mentorship_ecommerce/features/home/domain/usecases/get_featured_products_usecase.dart';
import 'package:mentorship_ecommerce/features/home/presentation/cubits/cubit/featured_products_state.dart';

class FeaturedProductsCubit extends Cubit<FeaturedProductsState> {
  FeaturedProductsCubit(this._getFeaturedProductsUseCase)
      : super(FeaturedProductsInitial());
  final GetFeaturedProductsUseCase _getFeaturedProductsUseCase;

  void featuredProductStateEmitter() async {
    emit(FeaturedProductsLoading());
    final result = await _getFeaturedProductsUseCase.call(const NoParam());

    result.fold(
      (message) => emit(FeaturedProductsFailure(message: message)),
      (products) => emit(FeaturedProductsSuccess(products: products)),
    );
  }
}
