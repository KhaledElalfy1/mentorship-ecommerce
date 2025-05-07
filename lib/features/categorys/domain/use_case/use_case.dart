import 'package:mentorship_ecommerce/features/categorys/data/model/category_model.dart';
import 'package:mentorship_ecommerce/features/categorys/domain/repo/repository.dart';

class GetCategoriesUseCase{
  final CategoryRepository repository;
  GetCategoriesUseCase( this.repository);
  Future <List<Category>> call (){
    return repository.getallCategories();
  }
}
