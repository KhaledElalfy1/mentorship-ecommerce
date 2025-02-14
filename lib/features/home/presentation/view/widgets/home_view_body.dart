import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_app_bar.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/custom_tabs.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            icon: SvgPicture.asset(Assets.homeIcon),
            title: 'GemStore',
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 44,
          ),
          const CustomTabs(),
          const SizedBox()
        ],
      ),
    );
  }
}
