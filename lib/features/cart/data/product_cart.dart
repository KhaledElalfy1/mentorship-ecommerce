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
          "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
      productName: "Sportwear Set",
      productPrice: " 80.00",
      productSize: "L",
      productColor: "Cream"),
  ProductCartModel(
      productImage:
          "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
      productName: "Turtleneck Sweater",
      productPrice: " 39.99",
      productSize: "M",
      productColor: "White"),
  ProductCartModel(
      productImage:
          "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
      productName: "Cotton T-shirt",
      productPrice: " 30.00",
      productSize: "L",
      productColor: "Black"),
  ProductCartModel(
      productImage:
          "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
      productName: "Cotton T-shirt",
      productPrice: " 30.00",
      productSize: "L",
      productColor: "Black"),
];
