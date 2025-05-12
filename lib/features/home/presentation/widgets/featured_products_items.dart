import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/features/home/presentation/cubits/cubit/featured_products_cubit.dart';
import 'package:mentorship_ecommerce/features/home/presentation/cubits/cubit/featured_products_state.dart';
import 'package:mentorship_ecommerce/features/home/presentation/widgets/featured_products_success_body.dart';


class FeaturedProductsItems extends StatelessWidget {
  const FeaturedProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedProductsCubit, FeaturedProductsState>(
      builder: (context, state) {
        if (state is FeaturedProductsSuccess) {
          return FeaturedProductsSuccessBody(products: state.products,);
        } else if (state is FeaturedProductsFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

