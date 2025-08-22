import 'package:dio/dio.dart';
import 'package:mentorship_ecommerce/features/categorys/data/model/category_model.dart';

class CategoryRemoteDataSources {
  Future<List<Category>> fetchCategories() async {
   final response = await Dio().get('https://api.example.com/categories');
    if (response.statusCode == 200) {
      List<Category> categories = (response.data as List)
          .map((category) => Category.fromJson(category))
          .toList();
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
    
  }
}