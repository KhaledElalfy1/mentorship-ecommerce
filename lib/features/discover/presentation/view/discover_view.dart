import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/widgets/shimmer_widget.dart';
import 'package:mentorship_ecommerce/features/categorys/presentation/cubit/category_cubit.dart';
import 'package:mentorship_ecommerce/features/discover/data/models/category_model.dart';
import 'widget/custom_category_container.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoading) {
          return Column (
            children: List.generate(
              3,
              (_) => const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ShimmerWidget(height: 100),
              ),
            ),
          );
        } else if (state is CategoryLoaded) {
          final categories = state.categories;

          return Column(
            children: List.generate(
              categories.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomCategoryContainer(
                  categoryModel: CategoryModel(
                    backgroundColor: 0xff898280,
                    circleColor: 0xffF9C9492,
                    numberOfItems: '12',
                    category: categories[index].name,
                    image: categories[index].image,
                  ),
                ),
              ),
            ),
          );
        } else if (state is CategoryError) {
          return Text('Error: ${state.message}');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
