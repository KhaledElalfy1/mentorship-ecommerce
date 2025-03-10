class ProductCartModel {
  final String productImage;
  final String productName;
  final String productPrice;
  final String productSize;
  final String productColor;

  ProductCartModel(
      {required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productSize,
      required this.productColor});
}

List<ProductCartModel> productCart = [
  ProductCartModel(
      productImage:
          "https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Sportwear Set",
      productPrice: " 80.00",
      productSize: "L",
      productColor: "Cream"),
  ProductCartModel(
      productImage:
          "https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Turtleneck Sweater",
      productPrice: " 39.99",
      productSize: "M",
      productColor: "White"),
  ProductCartModel(
      productImage:
          "https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Cotton T-shirt",
      productPrice: " 30.00",
      productSize: "L",
      productColor: "Black"),
  ProductCartModel(
      productImage:
          "https://i.pinimg.com/736x/33/89/98/338998002d286ddab0c8c173f49feed4.jpg",
      productName: "Cotton T-shirt",
      productPrice: " 30.00",
      productSize: "L",
      productColor: "Black"),
];
