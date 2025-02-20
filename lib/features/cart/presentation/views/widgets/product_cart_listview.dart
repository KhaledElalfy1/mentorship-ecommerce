import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/product_cart.dart';

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
              "https://s3-alpha-sig.figma.com/img/fc91/d640/491a54d6427825d70d17317b32339301?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=e051ATcP55qfF7GGTmgelRwcuhsSRx0yZJSnISw1BU9mZ-yZ~3FywCRzxZTjyxhShdRk81QXenYIutQYeur8ST0UeJ8AfDd9hG1Sy6xJyKlYWvAs6pjnBfRd~NMy1b6TNwRI5tZuHKVhIjDZAwsMWaLRPrdC4wfN-~t3gF4oZD1FzGj2yuytY0y6VgBZy4uUcZMcslJfZEagCCJX7dn6DSPrwlRON-GJakhcogAzBvKSxycEPEX5d1qTAqjB2IZ8UG2nVfv8iSrrz3XUmlyIjM1c0BxTvKtImmVANLehm3~l9fjadGKh3vF6ok1fW5Xk4j-~x0-irur8UlvNrJD15g__",
          productName: "Cotton T-shirt",
          productPrice: " 30.00",
          productSize: "L",
          productColor: "Black"),
          
          ProductCart(
          productImage:
              "https://s3-alpha-sig.figma.com/img/fc91/d640/491a54d6427825d70d17317b32339301?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=e051ATcP55qfF7GGTmgelRwcuhsSRx0yZJSnISw1BU9mZ-yZ~3FywCRzxZTjyxhShdRk81QXenYIutQYeur8ST0UeJ8AfDd9hG1Sy6xJyKlYWvAs6pjnBfRd~NMy1b6TNwRI5tZuHKVhIjDZAwsMWaLRPrdC4wfN-~t3gF4oZD1FzGj2yuytY0y6VgBZy4uUcZMcslJfZEagCCJX7dn6DSPrwlRON-GJakhcogAzBvKSxycEPEX5d1qTAqjB2IZ8UG2nVfv8iSrrz3XUmlyIjM1c0BxTvKtImmVANLehm3~l9fjadGKh3vF6ok1fW5Xk4j-~x0-irur8UlvNrJD15g__",
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
