import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/constants.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               CustomAppBar(icon:  SvgPicture.asset(Constants.appBarIcon), title: 'GemStore',),
              SizedBox(
                height: MediaQuery.of(context).size.height / 41,
              ),
            ],
          ),
        )
      ],
    );
  }
}
