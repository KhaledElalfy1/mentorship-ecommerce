
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/header_card.dart';

class HeaderCardInfo extends StatefulWidget {
  const HeaderCardInfo({super.key});

  @override
  State<HeaderCardInfo> createState() => _WomanCardInfoState();
}

class _WomanCardInfoState extends State<HeaderCardInfo> {
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
          (index) => HeaderCard(
                currentPageIndex: currentPageIndex,
              )),
    );
  }
}
