import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/custom_appbar.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/generate_dots.dart';

class ProductFullCarousel extends StatefulWidget {
  const ProductFullCarousel({super.key});

  @override
  State<ProductFullCarousel> createState() => _ProductFullCarouselState();
}

List imageList = [
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=axZwAguBBhzhn5g4jwgOFYe7XFLKGY3JiiVTbmN1yxuYko84IvbZk5yYHeAQgVlCUK94c2tC6zLUSxEVhMuDSUjDNlj9KcYgb6pdEsdHG5hdSrvfF-yHQmkvsdNH89HOBM9E3LRQ~xVxN6wDvUJvPPhyN4qOgI~glx04eWUr4816xBbaEwFSD7KvGn0dQ0H5fHRnxiNYHPE9tjFieKBl9pW~m~6VTeSnhRmVVBNo~njJC~6Qcz9ZP2mW-K~N-z3glJBwSExya1QRXUHeS3IvOpHGyMjpn5Z7f2zU8lxh-s8vUv-DnczuTvNZJqwxq~FVyXLo0uoeUAP5EJn36qD~Cw__",
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=axZwAguBBhzhn5g4jwgOFYe7XFLKGY3JiiVTbmN1yxuYko84IvbZk5yYHeAQgVlCUK94c2tC6zLUSxEVhMuDSUjDNlj9KcYgb6pdEsdHG5hdSrvfF-yHQmkvsdNH89HOBM9E3LRQ~xVxN6wDvUJvPPhyN4qOgI~glx04eWUr4816xBbaEwFSD7KvGn0dQ0H5fHRnxiNYHPE9tjFieKBl9pW~m~6VTeSnhRmVVBNo~njJC~6Qcz9ZP2mW-K~N-z3glJBwSExya1QRXUHeS3IvOpHGyMjpn5Z7f2zU8lxh-s8vUv-DnczuTvNZJqwxq~FVyXLo0uoeUAP5EJn36qD~Cw__",
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=axZwAguBBhzhn5g4jwgOFYe7XFLKGY3JiiVTbmN1yxuYko84IvbZk5yYHeAQgVlCUK94c2tC6zLUSxEVhMuDSUjDNlj9KcYgb6pdEsdHG5hdSrvfF-yHQmkvsdNH89HOBM9E3LRQ~xVxN6wDvUJvPPhyN4qOgI~glx04eWUr4816xBbaEwFSD7KvGn0dQ0H5fHRnxiNYHPE9tjFieKBl9pW~m~6VTeSnhRmVVBNo~njJC~6Qcz9ZP2mW-K~N-z3glJBwSExya1QRXUHeS3IvOpHGyMjpn5Z7f2zU8lxh-s8vUv-DnczuTvNZJqwxq~FVyXLo0uoeUAP5EJn36qD~Cw__"
  
];

class _ProductFullCarouselState extends State<ProductFullCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: [
            for (int i = 0; i < imageList.length; i++)
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    imageList[i],
                  ),
                )),
                // width: MediaQuery.of(context).size.width,
                //  height: 532.h,
              )
          ],
          options: CarouselOptions(
            height: 532.h,
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
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Positioned(
          top: 0, // تثبيت الـ AppBar في الأعلى
          left: 0,
          right: 0,
          child:  CustomAppbar(),
        ),
        Positioned(
          bottom: 110.h, // تثبيت النقاط في الأسفل
          left: 0,
          right: 0,
          child: GenerateDots(
              imageList: imageList, currentIndex: _currentIndex),
        )
      ],
    );
  }
}
