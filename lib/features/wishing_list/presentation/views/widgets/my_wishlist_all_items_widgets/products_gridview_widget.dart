import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_wishlist_widget.dart';

class ProductsGridviewWidget extends StatelessWidget {
  const ProductsGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductWishlistWidget> productWidget = [
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/277a/304a/44849c4e605ccf87ec37092bf51698d0?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JBOfaeb5wFH~dPXjJbAdL4EjX8OYEZQTbekvgzqeoRCSdz9PDlCLherpY8R2zHIjf3L8kL0NmzAMIs8Z3yxXAGpylTCblDnPOkkp1XcWiO8iaRZl2Cx73rpluUkW6HQmG5ryh8nwDTMJ1tvBZLPC~B4RV3jtBU4tY2FJ-BJlK69QzYSmnLr24K-WTUVCpEWWZdnJkHlW53W2EtDycRCEhgy5SGdwctSaN1Wi6XMaqdjik4JpR~8Nad13fDjQQc7Qx-NtMg7PvEoClhppYvIkTF7X7jn3HZ715wj~vXUWQ2o2mjDh12Pl615JKZOJIkZSmFBcFZ2FCaWP~7NHJI8qQQ__",
          productName: "Front Tie Mini Dress",
          productPrice: 59.00,
          rating: 4,
          num: 38),
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/226c/7c54/28720a36a74b4a0234996217317a7aac?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=cRXrAOGX29wnASXIbKg9Nb~d7cxlWQeqC5d~Z2BH5mh1ikABSJo5Y2l0~-cx05ZLpRuwXlm2rreZXyDIV5TQPOReaI5DWn4j7T8z8pwncVboPTLhzJVltdUwC5dgYt~KogYn~uzfH3Kf4g~LpGVqvDqM6QQWzvK4UFg0xmXmSJDGHs0bC8QCJ~QQG6Pjv~~610qmUyZ-nh1dzn2yGkC7qEgd0oiHg0yp2iYu2gKeLUzMEbivnnwWPlh1tKcr38zqPHtcRsIgFPrKWV8cnt1smIJcT7w0pvZ-ROpfQBbMIGwMtb85PV4kb428c9EpTTvQyAAkjRUx0Idz52CFuqtAbQ__",
          productName: "Front Tie Mini Dress",
          productPrice:90.00,
          rating: 5,
          hasLowPrice: true,
          productNewPrice: 52.00,
          num: 90),
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/0bae/90a8/2fa4f5ac14e4f0e05d1b9536e46e2dad?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=TX~zNglxQJxHmX~FxP2xDJpyiYFC0rz-pBReBLgXt9XOs6-3XAICOOUiJSV8QCeMJlXWuMvyUF8K3ZH0vvRVjStF118k6y79H5o55q9-CWkwG~M5tRNAmAOqlFumLRlq8XvCPIj1S6Ot3bs44PjyGqivWJIUg3-kMaaQ1fVbmin5JOOLivXRZMsVjRkiqOerbBeV6uOcLqsrbyNsrnKANhqGJAmm4bf7nMmUlk2vUs73EC4e3QmUnP-nd2CYJabxiz4an5R3hFFcp2FdgD9U207Ggj-n0BwW2pTWgC9cSJz6e-h3VDRH7FnpliF4YXMCH~xZydHpIPHPY2MTY0FAxg__",
          productName: "Front Tie Mini Dress",
          productPrice: 59.00,
          rating: 4,
          num: 38),
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/277a/304a/44849c4e605ccf87ec37092bf51698d0?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JBOfaeb5wFH~dPXjJbAdL4EjX8OYEZQTbekvgzqeoRCSdz9PDlCLherpY8R2zHIjf3L8kL0NmzAMIs8Z3yxXAGpylTCblDnPOkkp1XcWiO8iaRZl2Cx73rpluUkW6HQmG5ryh8nwDTMJ1tvBZLPC~B4RV3jtBU4tY2FJ-BJlK69QzYSmnLr24K-WTUVCpEWWZdnJkHlW53W2EtDycRCEhgy5SGdwctSaN1Wi6XMaqdjik4JpR~8Nad13fDjQQc7Qx-NtMg7PvEoClhppYvIkTF7X7jn3HZ715wj~vXUWQ2o2mjDh12Pl615JKZOJIkZSmFBcFZ2FCaWP~7NHJI8qQQ__",
          productName: "Front Tie Mini Dress",
          productPrice: 59.00,
          rating: 4,
          num: 38),
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/226c/7c54/28720a36a74b4a0234996217317a7aac?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=cRXrAOGX29wnASXIbKg9Nb~d7cxlWQeqC5d~Z2BH5mh1ikABSJo5Y2l0~-cx05ZLpRuwXlm2rreZXyDIV5TQPOReaI5DWn4j7T8z8pwncVboPTLhzJVltdUwC5dgYt~KogYn~uzfH3Kf4g~LpGVqvDqM6QQWzvK4UFg0xmXmSJDGHs0bC8QCJ~QQG6Pjv~~610qmUyZ-nh1dzn2yGkC7qEgd0oiHg0yp2iYu2gKeLUzMEbivnnwWPlh1tKcr38zqPHtcRsIgFPrKWV8cnt1smIJcT7w0pvZ-ROpfQBbMIGwMtb85PV4kb428c9EpTTvQyAAkjRUx0Idz52CFuqtAbQ__",
          productName: "Front Tie Mini Dress",
          productPrice:90.00,
          rating: 5,
          hasLowPrice: true,
          productNewPrice: 52.00,
          num: 90),
      const ProductWishlistWidget(
          productImage:
              "https://s3-alpha-sig.figma.com/img/0bae/90a8/2fa4f5ac14e4f0e05d1b9536e46e2dad?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=TX~zNglxQJxHmX~FxP2xDJpyiYFC0rz-pBReBLgXt9XOs6-3XAICOOUiJSV8QCeMJlXWuMvyUF8K3ZH0vvRVjStF118k6y79H5o55q9-CWkwG~M5tRNAmAOqlFumLRlq8XvCPIj1S6Ot3bs44PjyGqivWJIUg3-kMaaQ1fVbmin5JOOLivXRZMsVjRkiqOerbBeV6uOcLqsrbyNsrnKANhqGJAmm4bf7nMmUlk2vUs73EC4e3QmUnP-nd2CYJabxiz4an5R3hFFcp2FdgD9U207Ggj-n0BwW2pTWgC9cSJz6e-h3VDRH7FnpliF4YXMCH~xZydHpIPHPY2MTY0FAxg__",
          productName: "Front Tie Mini Dress",
          productPrice: 59.00,
          rating: 4,
          num: 38),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 0.554,
      ),
      itemCount: productWidget.length,
      itemBuilder: (context, index) {
        return productWidget[index];
      },
    );
  }
}
