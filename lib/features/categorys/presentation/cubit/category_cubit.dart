import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mentorship_ecommerce/features/categorys/data/model/category_model.dart';
import 'package:mentorship_ecommerce/features/categorys/domain/use_case/use_case.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final GetCategoriesUseCase getCategoriesUseCase;

  CategoryCubit(this.getCategoriesUseCase) : super(CategoryInitial());

  Future<void> fetchCategories() async {
    emit(CategoryLoading());
    try {
      final categories = await getCategoriesUseCase.call();
      emit(CategoryLoaded(categories));
    } catch (e) {
      emit(CategoryError(e.toString()));
}
}
}