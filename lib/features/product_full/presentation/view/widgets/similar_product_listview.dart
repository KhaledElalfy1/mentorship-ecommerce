import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/product_widget.dart';

class SimilarProductListview extends StatelessWidget {
  const SimilarProductListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const ProductWidget(
                image:
                    "https://th.bing.com/th/id/OIP.sOwYHfrpmQ_U261wbOUznQHaLH?rs=1&pid=ImgDetMain",
                productName: "Rise Crop Hoodie",
                price: "43.00");
          }),
    );
  }
}
