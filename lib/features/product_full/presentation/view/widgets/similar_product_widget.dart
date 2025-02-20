import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';

class SimilarProductWidget extends StatefulWidget {
  const SimilarProductWidget({super.key});

  @override
  State<SimilarProductWidget> createState() => _SimilarProductWidgetState();
}

class _SimilarProductWidgetState extends State<SimilarProductWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Similar Product",
                style: Styles.textStyle16,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.5 : 0.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.dividerColor,
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutCirc,
            child:
                isExpanded ? similarProductListview() : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget productWidget(String image, String productName, String price) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              height: 192.h,
              width: 126.w,
              image,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            productName,
            style: Styles.textStyle12,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "\$ $price",
            style: Styles.textStyle16,
          )
        ],
      ),
    );
  }

  Widget similarProductListview() {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return productWidget(
                "https://th.bing.com/th/id/OIP.sOwYHfrpmQ_U261wbOUznQHaLH?rs=1&pid=ImgDetMain",
                "Rise Crop Hoodie",
                "43.00");
          }),
    );
  }
}
