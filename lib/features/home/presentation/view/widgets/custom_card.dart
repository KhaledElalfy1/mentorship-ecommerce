import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/data/models/main_card_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.mainCardModel,
  });
  final MainCardModel mainCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainCardModel.padding,
      child: Container(
        width: mainCardModel.width,
        height: mainCardModel.height,
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(mainCardModel.image), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(borderRadius: mainCardModel.borderRadius),
          color: mainCardModel.backgroundColor ?? Colors.transparent,
        ),
        child: mainCardModel.child,
      ),
    );
  }
}
