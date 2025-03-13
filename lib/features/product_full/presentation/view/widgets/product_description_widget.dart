import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

import '../../../../../core/routes/routes_exports.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<ProductDescriptionWidget> createState() =>
      _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
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
                    firebaseAnalyticsLogEvent(
                        firebaseAnalyticsEventModel:
                            FirebaseAnalyticsEventModel(
                      name: "product_description",
                      parameters: {
                        'action': 'expand',
                        'product_id': widget.productModel.productName,
                      },
                    ));
                  },
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.dividerColor,
          ),
          ProductDescription(
            isExpanded: isExpanded,
            productModel: widget.productModel,
          )
        ],
      ),
    );
  }
}
