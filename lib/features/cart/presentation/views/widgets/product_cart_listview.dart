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
              "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mCmhzWkEegxJsbedA~zbfpR8bsdJ9uCk-IsVRDxht0vS3t8vO1bE~84xhzCzRQUUOl-YqHQ1YuzmsaeEQBpd8FJRYKagn8ZRWEP~zmbq7UQmBEpiVXl2RtEh8q4JDc6nFpwX1Y9zRnWXiPUxCu7mPyFtKPgbA90wtxR46nKIk2GGIMMzJYz~dFiIlgPEcDSGQestIK0yFS7Ytb9tq1pyv8CFPRLpsuRzitwjao6gFZm7yXjcSGWmbNQZDVjFSNOd0t1X3wRqY6qGJpsXp8c1VmyoZaShRF~soW5uWL9xOoBq9WjKeynMxovvmszElYSalkk7l3DdrPAR0EJRXKUybw__",
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
