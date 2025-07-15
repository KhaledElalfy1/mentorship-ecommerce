import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_cubit.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_state.dart';

import 'recommended_item.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedProductsCubit, RecommendedProductsState>(
      buildWhen: (previous, current) => current is Loading || current is Success || current is Error,
      builder: (context, state) {
        state.whenOrNull(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data) {
            return SizedBox(
              height: 66.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length - 1 > 0 ? data.length - 1 : 0,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: RecommendedItem(
                      productEntity: data[index],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (failure) {
            return Center(
              child: Text(
                failure.error,
                style: TextStyle(color: Colors.red, fontSize: 16.sp),
              ),
            );
          },
        );
        return const SizedBox.shrink();
      },
    );
  }
}
