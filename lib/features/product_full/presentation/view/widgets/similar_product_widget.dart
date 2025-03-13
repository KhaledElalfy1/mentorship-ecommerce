import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

import '../../../../../core/routes/routes_exports.dart';

class SimilarProductWidget extends StatefulWidget {
  const SimilarProductWidget({super.key, required this.productModel});
  final ProductModel productModel;
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
                    firebaseAnalyticsLogEvent(
                        firebaseAnalyticsEventModel:
                            FirebaseAnalyticsEventModel(
                      name: "similar_Product",
                      parameters: {
                        'action':
                            "similarProduct for ${widget.productModel.productName}",
                      },
                    ));
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
          ProductWidgetDetails(
            isExpanded: isExpanded,
            productModel: widget.productModel,
          ),
        ],
      ),
    );
  }
}
