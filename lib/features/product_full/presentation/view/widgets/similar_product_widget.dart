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
                  child:const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color:AppColor.dividerColor,
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
      padding:  EdgeInsets.only(right: 10.w,top: 10.h),
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
                "https://s3-alpha-sig.figma.com/img/5c86/d1e9/fefeb1de1a02e52e62f59bb5624dff95?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=YiZUth5vf42D9ZU1cmerKy2UARNjqW72V5f8CeHCtbcpQZuq2XbqWetkjtCCpx5~z3f0kYPFY9SX-CoPfHAmQ0p55qEqBoEM7KgwyjtNRajiMyViKdOlU8tluSVTuPhi6hXZSli~dCO5cD~IrvFbAgW583Ic63uqK1KXpkrV~27INMSgnCa82UsxFbY6hL8HY1~z6pw~tywItLgD3ThLcA2IGef4qSfDeBMLFk-TJTCyz9XodVt88a~~k3coL~OMBA8qK0h8JnY4W6sX7XaOzBDa6zIN4XQkuf--OZe4ET1mFHVCu7jzIRypE~kl92eEXXlhFUn4Lq9OjtatarrMeg__",
                "Rise Crop Hoodie",
                "43.00");
          }),
    );
  }
}
