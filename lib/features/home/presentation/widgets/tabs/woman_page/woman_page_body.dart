import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/di/dependency_injection.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_cubit.dart';

import '../../featured_products_section.dart';
import '../../header_card_info.dart';
import '../../recommended_section.dart';
import '../../top_collection_section.dart';

class WomanPageBody extends StatelessWidget {
  const WomanPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeaderCardInfo(),
        35.addVerticalSpace,
        const FeaturedProductsSection(),
        32.addVerticalSpace,
        BlocProvider<RecommendedProductsCubit>(
          create: (context) => getIt<RecommendedProductsCubit>()..getRecommendedProducts(),
          child: const RecommendedSection(),
        ),
        34.addVerticalSpace,
        const TopCollectionSection(),
      ],
    );
  }
}
