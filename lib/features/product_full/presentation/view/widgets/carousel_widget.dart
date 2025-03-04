import 'package:carousel_slider/carousel_slider.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/product_model.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget(
      {super.key, required this.currentIndex, required this.productModel});
  final ValueNotifier<int> currentIndex;
  final ProductModel productModel;
  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (int i = 0; i < widget.productModel.productImage.length; i++)
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                widget.productModel.productImage[i],
              ),
              fit: BoxFit.fill
            )),
          )
      ],
      options: CarouselOptions(
        height: 550.h,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        enlargeFactor: 0.0,
        onPageChanged: (index, reason) {
          setState(() {
            widget.currentIndex.value = index;
          });
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
