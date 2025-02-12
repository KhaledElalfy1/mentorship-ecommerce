import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/customer_review_widget.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/rating_widget_details.dart';

class ProductReviewsWidget extends StatefulWidget {
  const ProductReviewsWidget({super.key});

  @override
  State<ProductReviewsWidget> createState() => _ProductReviewsWidgetState();
}

class _ProductReviewsWidgetState extends State<ProductReviewsWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.only(left: 32.w, right: 32.h),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reviews",
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
            child: isExpanded
                ? Column(
                    children: [
                      const RatingWidgetDetails(),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomerReviewWidget(
                          image:
                              "https://s3-alpha-sig.figma.com/img/f388/90a2/25ddff0443fafd8c2e8b14967c27e285?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=QYfLhd7gbXd3u-JxQn0oB6UkDU6-3Sh9QGvEtNTO-Xq0L4Ux-bmDqO70eGip7RzoP5BRnASbEx4SvFiEJRx1~pbUtyTOopqTUXsJ9OKKwi3d6kHpUwbJMjWkbfxZAxsLs5rOeTXvnA79v2wtEuCd1NkpFapXHkEkDNJt1RXN~Sp1AqjCCLEO~3iswQhaAqHVA4sNouoUiisql43SPuDEtfgLCQjZMqx5a14dWGrGC41xWsOgjtzDNUJQ4SJkM2HGa58f4kt-jLF-ILtbiJnZDXChIwLidzPRqLhkJURYPIZBWb1kbAzNe6XiFt~VI-sAxvaqDrx130SQ5rrRVnRKWA__",
                          customerName: "Jennifer Rose",
                          time: "5m ago",
                          review:
                              "I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!"),
                      const CustomerReviewWidget(
                          image:
                              "https://s3-alpha-sig.figma.com/img/09e9/0f5e/a1ecc64acbaaa975deb94ffe18def16c?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PLQIxBhxSKgzvuSbk24pNhzaoTELCQ8o3m4o8NIbaLAaE4-0MCPyLrep-0akw8arler8fsFq-gziUGzGbc0GbN6numXRyKcrT~nAjjYV-~b3qSSr3J0e7lOwQDKEVl7ahU~i1R5xwxoWqmeoCPx9AXtJg5A0-8GOXsfo0e0-FysGMQhRxb1hD4blSQsSIJ9Xrb3uuY4Iq7Wq3wx2fXgyDt1kLPsj6sgWzh1K2QqnWRjti~LbdmmDjAvBe7-GU-dztmXBW2ChzE23Xn0Pny4zbBsMxzbx2-afM5BR1rZb1DotC95e58xkBCiIcfIfvtghcv2lyBCxzQ~fU9JKVvLKmw__",
                          customerName: "Kelly Rihana",
                          time: "9m ago",
                          review:
                              "I'm very happy with order, It was delivered on and good quality. Recommended!"),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
