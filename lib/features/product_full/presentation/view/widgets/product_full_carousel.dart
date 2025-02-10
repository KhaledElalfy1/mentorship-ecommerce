import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/product_full/presentation/view/widgets/generate_dots.dart';

class ProductFullCarousel extends StatefulWidget {
  const ProductFullCarousel({super.key});

  @override
  State<ProductFullCarousel> createState() => _ProductFullCarouselState();
}

List imageList = [
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mCmhzWkEegxJsbedA~zbfpR8bsdJ9uCk-IsVRDxht0vS3t8vO1bE~84xhzCzRQUUOl-YqHQ1YuzmsaeEQBpd8FJRYKagn8ZRWEP~zmbq7UQmBEpiVXl2RtEh8q4JDc6nFpwX1Y9zRnWXiPUxCu7mPyFtKPgbA90wtxR46nKIk2GGIMMzJYz~dFiIlgPEcDSGQestIK0yFS7Ytb9tq1pyv8CFPRLpsuRzitwjao6gFZm7yXjcSGWmbNQZDVjFSNOd0t1X3wRqY6qGJpsXp8c1VmyoZaShRF~soW5uWL9xOoBq9WjKeynMxovvmszElYSalkk7l3DdrPAR0EJRXKUybw__",
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mCmhzWkEegxJsbedA~zbfpR8bsdJ9uCk-IsVRDxht0vS3t8vO1bE~84xhzCzRQUUOl-YqHQ1YuzmsaeEQBpd8FJRYKagn8ZRWEP~zmbq7UQmBEpiVXl2RtEh8q4JDc6nFpwX1Y9zRnWXiPUxCu7mPyFtKPgbA90wtxR46nKIk2GGIMMzJYz~dFiIlgPEcDSGQestIK0yFS7Ytb9tq1pyv8CFPRLpsuRzitwjao6gFZm7yXjcSGWmbNQZDVjFSNOd0t1X3wRqY6qGJpsXp8c1VmyoZaShRF~soW5uWL9xOoBq9WjKeynMxovvmszElYSalkk7l3DdrPAR0EJRXKUybw__",
  "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mCmhzWkEegxJsbedA~zbfpR8bsdJ9uCk-IsVRDxht0vS3t8vO1bE~84xhzCzRQUUOl-YqHQ1YuzmsaeEQBpd8FJRYKagn8ZRWEP~zmbq7UQmBEpiVXl2RtEh8q4JDc6nFpwX1Y9zRnWXiPUxCu7mPyFtKPgbA90wtxR46nKIk2GGIMMzJYz~dFiIlgPEcDSGQestIK0yFS7Ytb9tq1pyv8CFPRLpsuRzitwjao6gFZm7yXjcSGWmbNQZDVjFSNOd0t1X3wRqY6qGJpsXp8c1VmyoZaShRF~soW5uWL9xOoBq9WjKeynMxovvmszElYSalkk7l3DdrPAR0EJRXKUybw__",
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
        GenerateDots(imageList: imageList, currentIndex: _currentIndex)
      ],
    );
  }

 
}
