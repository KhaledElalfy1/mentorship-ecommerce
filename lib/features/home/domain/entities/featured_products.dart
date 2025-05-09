// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FeaturedProducts extends Equatable {
  final int id;
  final String title;
  final List<String> images;

  final num price;

 const FeaturedProducts({
    required this.id,
    required this.title,
    required this.images,
    required this.price,
  });

  @override
  List<Object> get props => [id, title, images, price];
}
