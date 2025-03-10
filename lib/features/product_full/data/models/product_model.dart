import 'package:mentorship_ecommerce/features/product_full/data/models/product_review_model.dart';
import 'package:mentorship_ecommerce/features/product_full/data/models/similar_product_model.dart';

class ProductModel {
  final List<String> productImage;
  final String productName;
  final double productPrice;
  final double rating;
  final double productStarRating;
  final double productNumOfRating;
  final String productDescription;
  final List<ReviewModel> reviews;
  final List<SimilarProductModel> similarProducts;

  ProductModel(
      {required this.productImage,
      required this.productName,
      required this.rating,
      required this.productPrice,
      required this.productStarRating,
      required this.productNumOfRating,
      required this.productDescription,
      required this.reviews,
      required this.similarProducts});
}

final ProductModel products = ProductModel(
    productName: "Sportwear Set",
    productPrice: 80.00,
    rating: 4.9,
    productStarRating: 5,
    productNumOfRating: 83,
    productDescription:
        "Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.",
    reviews: [
      ReviewModel(
          reviewerImage:
              "https://s3-alpha-sig.figma.com/img/f388/90a2/25ddff0443fafd8c2e8b14967c27e285?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xd1OjGWmB9Bz81q32KFXLE5ROxGLPdldmnxHGMY557KtjDbykyIThSUovzGILoI032JV4hSKXEtiERyDKQHySYKahaT3nO2AoHooQ3XOoFIWm8MxEX5CBOj88PasYQsiGdHrKEYhq7oE8gM6fpoq8HpL6ei0aDq1bRMsN1HeHuQrC7Y~qaPe~xrh0XlOWw4y83-WrQlnkocN4ytNqOHgG6TEsXGY9mZovwMoHcWY81b8UyH87g2X3pq710sEGhT3vxN1sN-LcVpmHiUqwAddg3HDMEzt1PiIbgoEmXv3DBjchGmKkaoQYKx3s3l86IYDQAFbdjY8K12MsSrpdeh30g__",
          reviewerName: "Kelly Rihana",
          timeAgo: 9,
          review:
              "I'm very happy with order, It was delivered on and good quality. Recommended!",
          rating: 5),
      ReviewModel(
          reviewerImage:
              "https://s3-alpha-sig.figma.com/img/f388/90a2/25ddff0443fafd8c2e8b14967c27e285?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xd1OjGWmB9Bz81q32KFXLE5ROxGLPdldmnxHGMY557KtjDbykyIThSUovzGILoI032JV4hSKXEtiERyDKQHySYKahaT3nO2AoHooQ3XOoFIWm8MxEX5CBOj88PasYQsiGdHrKEYhq7oE8gM6fpoq8HpL6ei0aDq1bRMsN1HeHuQrC7Y~qaPe~xrh0XlOWw4y83-WrQlnkocN4ytNqOHgG6TEsXGY9mZovwMoHcWY81b8UyH87g2X3pq710sEGhT3vxN1sN-LcVpmHiUqwAddg3HDMEzt1PiIbgoEmXv3DBjchGmKkaoQYKx3s3l86IYDQAFbdjY8K12MsSrpdeh30g__",
          reviewerName: "Kelly Rihana",
          timeAgo: 9,
          review:
              "I'm very happy with order, It was delivered on and good quality. Recommended!",
          rating: 5),
      ReviewModel(
          reviewerImage:
              "https://s3-alpha-sig.figma.com/img/f388/90a2/25ddff0443fafd8c2e8b14967c27e285?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xd1OjGWmB9Bz81q32KFXLE5ROxGLPdldmnxHGMY557KtjDbykyIThSUovzGILoI032JV4hSKXEtiERyDKQHySYKahaT3nO2AoHooQ3XOoFIWm8MxEX5CBOj88PasYQsiGdHrKEYhq7oE8gM6fpoq8HpL6ei0aDq1bRMsN1HeHuQrC7Y~qaPe~xrh0XlOWw4y83-WrQlnkocN4ytNqOHgG6TEsXGY9mZovwMoHcWY81b8UyH87g2X3pq710sEGhT3vxN1sN-LcVpmHiUqwAddg3HDMEzt1PiIbgoEmXv3DBjchGmKkaoQYKx3s3l86IYDQAFbdjY8K12MsSrpdeh30g__",
          reviewerName: "Kelly Rihana",
          timeAgo: 9,
          review:
              "I'm very happy with order, It was delivered on and good quality. Recommended!",
          rating: 5),
    ],
    similarProducts: [
      SimilarProductModel(
          productImage:
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
          productName: "Rise Crop Hoodie",
          productPrice: 43.00),
      SimilarProductModel(
          productImage:
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
          productName: "Gym Crop Top",
          productPrice: 55.00),
      SimilarProductModel(
          productImage:
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
          productName: "Gym Crop Top",
          productPrice: 100.00),
    ],
    productImage: [
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
               "https://i.pinimg.com/736x/c7/05/67/c705673b6c1adc68aab098d7ea82017b.jpg",
    ]);
