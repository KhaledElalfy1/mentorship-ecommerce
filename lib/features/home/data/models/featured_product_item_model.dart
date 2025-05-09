import 'package:mentorship_ecommerce/features/home/domain/entities/featured_products.dart';

class FeaturedProductItemModel extends FeaturedProducts {
  FeaturedProductItemModel(
      {required super.id,
      required super.title,
      required super.images,
      required super.price});

  factory FeaturedProductItemModel.fromJson(Map<String, dynamic> json) {
    return FeaturedProductItemModel(
      id: json['id'],
      title: json['title'],
      images: (json['images'] as List).cast<String>(),
      price: json['price'],
    );
  }
}
