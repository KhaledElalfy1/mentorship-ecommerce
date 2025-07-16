import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_cubit.dart';
import 'package:mentorship_ecommerce/features/home/presentation/logic/cubit/recommended_products_state.dart';

import 'recommended_item.dart';

class RecommendedItems extends StatefulWidget {
  const RecommendedItems({super.key});

  @override
  State<RecommendedItems> createState() => _RecommendedItemsState();
}

class _RecommendedItemsState extends State<RecommendedItems> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrolControllerListener();
  }

  void scrolControllerListener() {
    _scrollController.addListener(() {
      final recommendedCubit = context.read<RecommendedProductsCubit>();
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 100 && recommendedCubit.hasMore) {
        recommendedCubit.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedProductsCubit, RecommendedProductsState>(
      buildWhen: (previous, current) => current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data, hasMore) {
            return SizedBox(
                height: 66.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: hasMore ? data.length + 1 : data.length,
                      itemBuilder: (context, index) {
                        if (index >= data.length) {
                          return const CircularProgressIndicator(); // or whatever
                        }
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: RecommendedItem(
                            productEntity: data[index],
                          ),
                        );
                      }),
                ));
          },
          error: (failure) {
            return Center(
              child: Text(
                failure.error,
                style: TextStyle(color: Colors.red, fontSize: 16.sp),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
