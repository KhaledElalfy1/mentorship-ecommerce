import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_rating_widget.dart';

class ProductFullDetailsWidget extends StatelessWidget {
  const ProductFullDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sportwear Set",
                style: Styles.textStyle18,
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomRatingWidget(
                    rating: 5,
                    size: 22,
                  ),
                  Text(
                    "(83)",
                    style: Styles.textStyle12,
                  ),
                ],
              ),
            ],
          ),
          Text(
            "\$ 80.00",
            style: Styles.textStyle26,
          ),
        ],
      ),
    );
  }
}