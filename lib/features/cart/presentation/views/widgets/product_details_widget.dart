import '../../../../../core/routes/routes_exports.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productSize,
      required this.productColor});
  final String productImage;
  final String productName;
  final String productPrice;
  final String productSize;
  final String productColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              bottomLeft: Radius.circular(25.r)),
          child: Image.network(
            productImage,
            height: 99.h,
            width: 97.w,
            fit: BoxFit.cover,
          ),
        ),
        ProductDetails(
            productName: productName,
            productPrice: productPrice,
            productSize: productSize,
            productColor: productColor),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CheckBoxWidget(),
            ContainerNumberOfProduct(),
          ],
        )
      ],
    );
  }
}