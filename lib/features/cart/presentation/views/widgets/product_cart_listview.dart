import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_cart.dart';

class ProductCartListview extends StatelessWidget {
  const ProductCartListview({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductCart> productCart = const [
      ProductCart(
          productImage:
              "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
          productName: "Sportwear Set",
          productPrice: " 80.00",
          productSize: "L",
          productColor: "Cream"),
      ProductCart(
          productImage:
              "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
          productName: "Turtleneck Sweater",
          productPrice: " 39.99",
          productSize: "M",
          productColor: "White"),
      ProductCart(
          productImage:
              "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
          productName: "Cotton T-shirt",
          productPrice: " 30.00",
          productSize: "L",
          productColor: "Black"),
          
          ProductCart(
          productImage:
              "https://www.figma.com/file/9Ysj9V1IaSveAbnkcTnFSu/image/ac4448f9289ba74dc8e260cf2469fe907263ed9b",
          productName: "Cotton T-shirt",
          productPrice: " 30.00",
          productSize: "L",
          productColor: "Black"),
          
         
    ];
    return SizedBox(
      width:310.w ,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          itemCount: productCart.length,
          itemBuilder: (BuildContext context, int index) {
            return productCart[index];
          }),
    );
  }
}
