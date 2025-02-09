import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/widgets/woman_card_info.dart';

class WomanPageBody extends StatelessWidget {
  const WomanPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WomanCardInfo()
        ],
      ),
    );
  }
}
