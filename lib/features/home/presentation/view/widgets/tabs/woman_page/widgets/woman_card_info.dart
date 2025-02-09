import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/widgets/woman_card.dart';

class WomanCardInfo extends StatefulWidget {
  const WomanCardInfo({super.key});

  @override
  State<WomanCardInfo> createState() => _WomanCardInfoState();
}

class _WomanCardInfoState extends State<WomanCardInfo> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();

        setState(() {});
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          3,
          (index) => WomanCard(
                currentPageIndex: currentPageIndex,
              )),
    );
  }
}
