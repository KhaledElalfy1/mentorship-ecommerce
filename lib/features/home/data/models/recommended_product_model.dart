// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'recommended_product_model.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  int? productId;
  String? title;
  String? slug;
  int? price;
  String? description;
  Category? category;
  List<String>? images;
  String? creationAt;
  String? updatedAt;
  Product({
    this.productId,
    this.title,
    this.slug,
    this.price,
    this.description,
    this.category,
    this.images,
    this.creationAt,
    this.updatedAt,
  });
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@JsonSerializable()
class Category {
  @JsonKey(name: 'id')
  int? categoryId;
  String? name;
  String? slug;
  String? image;
  String? creationAt;
  String? updatedAt;

  Category({this.categoryId, this.name, this.slug, this.image, this.creationAt, this.updatedAt});
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
