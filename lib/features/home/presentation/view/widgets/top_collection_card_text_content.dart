import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_card_config_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/top_collection_main_card_model.dart';

class TopCollectionCardTextContent extends StatelessWidget {
  const TopCollectionCardTextContent({super.key, required this.topCollectionMainCardModel, required this.topCollectionCardConfigModel});
    final TopCollectionMainCardModel topCollectionMainCardModel;
   final TopCollectionCardConfigModel topCollectionCardConfigModel;

  @override
  Widget build(BuildContext context,) {
    return  Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 22.0),
              child: Column(
                children: [
                  Text(
                    topCollectionMainCardModel.name,
                    style: Styles.textStyle12.copyWith(
                      fontFamily: Constants.productSansLight,
                      color: AppColor.coolGray,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    topCollectionMainCardModel.description,
                    style: topCollectionCardConfigModel.style,
                  ),
                ],
              ),
            );
  }
}