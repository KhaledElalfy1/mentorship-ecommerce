
class ProductWishlist {
  final String productImage;
  final String productName;
  final double productPrice;
  final double? productNewPrice;
  final double rating;
  final int num;
  final bool? hasLowPrice;

  ProductWishlist(
      {required this.productImage,
      required this.productName,
      required this.productPrice,
      this.productNewPrice,
      required this.rating,
      required this.num,
      this.hasLowPrice =false});
}

final List<ProductWishlist> productWidget = [
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Front Tie Mini Dress",
      productPrice: 59.00,
      rating: 4,
      num: 38),
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/50/fb/4a/50fb4a08d300e5e6de76efb622644ddc.jpg",
      productName: "Front Tie Mini Dress",
      productPrice: 90.00,
      rating: 5,
      hasLowPrice: true,
      productNewPrice: 52.00,
      num: 90),
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Front Tie Mini Dress",
      productPrice: 59.00,
      rating: 4,
      num: 38),
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/50/fb/4a/50fb4a08d300e5e6de76efb622644ddc.jpg",
      productName: "Front Tie Mini Dress",
      productPrice: 59.00,
      rating: 4,
      num: 38),
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
    
      productName: "Front Tie Mini Dress",
      productPrice: 90.00,
      rating: 5,
      hasLowPrice: true,
      productNewPrice: 52.00,
      num: 90),
  ProductWishlist(
      productImage:"https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Front Tie Mini Dress",
      productPrice: 59.00,
      rating: 4,
      num: 38),
];