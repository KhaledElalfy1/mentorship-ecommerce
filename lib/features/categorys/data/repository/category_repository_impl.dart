
import 'package:mentorship_ecommerce/features/categorys/data/data_sources/category_remote_data_sources.dart';
import 'package:mentorship_ecommerce/features/categorys/data/model/category_model.dart';
import 'package:mentorship_ecommerce/features/categorys/domain/repo/repository.dart';

class CategoryRepositoryImpl implements CategoryRepository{
 final  CategoryRemoteDataSources remoteDataSource;

CategoryRepositoryImpl(this.remoteDataSource);


 @override
  Future<List<Category>>getallCategories() async {
  return await remoteDataSource.fetchCategories();
}}
