import 'package:mentorship_ecommerce/features/home/data/models/recommended_product_model.dart';
import 'package:mentorship_ecommerce/features/home/domain/entity/product_entity.dart';

class ProductsMapper {
  static ProductEntity toProductEntity(Product product) {
    return ProductEntity(
      id: product.productId,
      price: product.price,
      title: product.title,
      image: product.images?.first ,
    );
  }
}