import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/api/api_consumer.dart';
import 'package:mentorship_ecommerce/core/api/end_points.dart';
import 'package:mentorship_ecommerce/features/home/data/datasource/home_remote_data_source.dart';
import 'package:mentorship_ecommerce/features/home/data/models/featured_product_item_model.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiConsumer _apiConsumer;

  HomeRemoteDataSourceImpl(this._apiConsumer);
  @override
  Future<Either<String, List<FeaturedProductItemModel>>>
      getFeaturedProducts() async {
    try {
      final response = await _apiConsumer.get(EndPoints.featuredProducts);
      List<FeaturedProductItemModel> productsList = [];
      for (var products in response) {
        productsList.add(FeaturedProductItemModel.fromJson(products));
      }
      return right(_mergeSort(productsList));
    } catch (e) {
      return left(e.toString());
    }
  }

  List<FeaturedProductItemModel> _mergeSort(
      List<FeaturedProductItemModel> list) {
    if (list.length <= 1) return list;
    int middleIndex = (list.length / 2).floor();
    List<FeaturedProductItemModel> leftList =
        _mergeSort(list.sublist(0, middleIndex));
    List<FeaturedProductItemModel> rightList =
        _mergeSort(list.sublist(middleIndex));
    return _mergeList(leftList, rightList);
  }

  List<FeaturedProductItemModel> _mergeList(
      List<FeaturedProductItemModel> list1,
      List<FeaturedProductItemModel> list2) {
    int listOneLength = list1.length;
    int listTwoLength = list2.length;
    int i = 0, j = 0;
    List<FeaturedProductItemModel> mergedList = [];
    while (i < listOneLength && j < listTwoLength) {
      if (list1[i].price < list2[j].price) {
        mergedList.add(list1[i]);
        i++;
      } else {
        mergedList.add(list2[j]);
        j++;
      }
    }
    while (i < listOneLength) {
      mergedList.add(list1[i]);
      i++;
    }
    while (j < listTwoLength) {
      mergedList.add(list2[j]);
      j++;
    }
    return mergedList;
  }
}
