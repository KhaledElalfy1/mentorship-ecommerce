
import '../../data/model/category_model.dart';

abstract class CategoryRepository{
  Future<List<Category>> getallCategories();
}