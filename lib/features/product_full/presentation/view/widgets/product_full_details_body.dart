import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

class ProductFullDetailsBody extends StatelessWidget {
  const ProductFullDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const ProductFullDetailsWidget(),
              SizedBox(height: 5.h),
              const Divider(color: Color(0xffF3F3F6)),
              const ProductDescriptionWidget(),
              SizedBox(height: 15.h),
              const ProductReviewsWidget(),
              SizedBox(height: 15.h),
              const SimilarProductWidget(),
              //  SizedBox(height: 10.h),
            ],
          ),
          const AddToCartWidget()
        ],
      );
  }
}