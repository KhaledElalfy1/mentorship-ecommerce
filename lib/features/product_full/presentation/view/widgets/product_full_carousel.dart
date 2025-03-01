import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/data/image_list.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/carousel_widget.dart';
import 'custom_appbar.dart';
import 'generate_dots.dart';

class ProductFullCarousel extends StatefulWidget {
  const ProductFullCarousel({super.key});

  @override
  State<ProductFullCarousel> createState() => _ProductFullCarouselState();
}

class _ProductFullCarouselState extends State<ProductFullCarousel> {
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselWidget(currentIndex: _currentIndexNotifier),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CustomAppbar(),
        ),
        Positioned(
            bottom: 110.h,
            left: 0,
            right: 0,
            child: ValueListenableBuilder(
                valueListenable: _currentIndexNotifier,
                builder: (context, currentIndex, _) {
                  return GenerateDots(
                      imageList: imageList, currentIndex: currentIndex);
                }))
      ],
    );
  }
}
