import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_card_config_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tob_collection_card_image_content.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/top_collection_card_text_content.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../data/models/top_collection_main_card_model.dart';

class TopCollectionCard extends StatelessWidget {
  const TopCollectionCard({
    super.key,
    required this.topCollectionMainCardModel,
    required this.topCollectionCardConfigModel,
  });
  final TopCollectionMainCardModel topCollectionMainCardModel;
  final TopCollectionCardConfigModel topCollectionCardConfigModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: topCollectionCardConfigModel.borderRadius ?? BorderRadius.circular(0),
      child: Container(
        width: topCollectionCardConfigModel.width?.w,
        height: topCollectionCardConfigModel.height.h,
        decoration: const ShapeDecoration(
          color: AppColor.featuredCardBackgroundColor,
          shape: RoundedRectangleBorder(),
        ),
        child: Row(
          children: [
            TopCollectionCardTextContent(
              topCollectionMainCardModel: topCollectionMainCardModel,
              topCollectionCardConfigModel: topCollectionCardConfigModel,
            ),
            const Spacer(),
            TobCollectionCardImageContent(
              topCollectionMainCardModel: topCollectionMainCardModel,
              topCollectionCardConfigModel: topCollectionCardConfigModel,
            )
          ],
        ),
      ),
    );
  }
}
