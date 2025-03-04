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
              "https://s3-alpha-sig.figma.com/img/5c86/d1e9/fefeb1de1a02e52e62f59bb5624dff95?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Dj2C8Oh0HT58G4pNyQ6t1WjptQB3lgWJe87JUbXzzPDhYtqHj5F5~9D8OrwDMZ2fyWEaFJKp40mB3IMP5XTgLLTy3umFSSJSDDMBD9drzXiwvwRQ1oH5aO2pZ94F1LAfb2R8P2-xcsIY2xU2bazI2XhuTKypQPP6l-~BUWn7QnwFVbKqC-JkAyNo81JlANAMi41UGGFM3476PNf2WDCEo89~RtI7dWB~33jRtwW8~SbU14P2tMEaMfsE~U~bbKXsFwdjFeA50FmRPgVTTWv~~Bl1z~8sS67MuhrUli6zxQL2M3VnhUeycZX3abG~Z5KJ2QVqwBgfxl4aDa8B0Sl9pg__",
          productName: "Rise Crop Hoodie",
          productPrice: 43.00),
      SimilarProductModel(
          productImage:
              "https://s3-alpha-sig.figma.com/img/5c86/d1e9/fefeb1de1a02e52e62f59bb5624dff95?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Dj2C8Oh0HT58G4pNyQ6t1WjptQB3lgWJe87JUbXzzPDhYtqHj5F5~9D8OrwDMZ2fyWEaFJKp40mB3IMP5XTgLLTy3umFSSJSDDMBD9drzXiwvwRQ1oH5aO2pZ94F1LAfb2R8P2-xcsIY2xU2bazI2XhuTKypQPP6l-~BUWn7QnwFVbKqC-JkAyNo81JlANAMi41UGGFM3476PNf2WDCEo89~RtI7dWB~33jRtwW8~SbU14P2tMEaMfsE~U~bbKXsFwdjFeA50FmRPgVTTWv~~Bl1z~8sS67MuhrUli6zxQL2M3VnhUeycZX3abG~Z5KJ2QVqwBgfxl4aDa8B0Sl9pg__",
          productName: "Gym Crop Top",
          productPrice: 55.00),
      SimilarProductModel(
          productImage:
              "https://s3-alpha-sig.figma.com/img/5c86/d1e9/fefeb1de1a02e52e62f59bb5624dff95?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Dj2C8Oh0HT58G4pNyQ6t1WjptQB3lgWJe87JUbXzzPDhYtqHj5F5~9D8OrwDMZ2fyWEaFJKp40mB3IMP5XTgLLTy3umFSSJSDDMBD9drzXiwvwRQ1oH5aO2pZ94F1LAfb2R8P2-xcsIY2xU2bazI2XhuTKypQPP6l-~BUWn7QnwFVbKqC-JkAyNo81JlANAMi41UGGFM3476PNf2WDCEo89~RtI7dWB~33jRtwW8~SbU14P2tMEaMfsE~U~bbKXsFwdjFeA50FmRPgVTTWv~~Bl1z~8sS67MuhrUli6zxQL2M3VnhUeycZX3abG~Z5KJ2QVqwBgfxl4aDa8B0Sl9pg__",
          productName: "Gym Crop Top",
          productPrice: 100.00),
    ],
    productImage: [
      "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=LdvliusyWMrcd2NfHniIInrYELdc03QMIlaSm1p~getJSOHH2eZSVH5B8ZUvvcG901CsqKxNYzZ5t0vYBrsiJktwim6EuSD4aDOjAuXq4jWHFprAWzQdxrdSqtPIQBtCiix8uhYuUC5tDA6lNKx8yH69YhykvjGRSykr9RJR6mRZKHNdf7CeP2APcj3leH~H2qowQ-ft~YFZfn5Q66XgdO~av5YZuat0FIJRJuDffr~fJci0jw9YK~FGkw1VBdLH6ZTinfzyl4Vtv1SWrZ~1~oT8a1zKY6QdjzSrLQyQuDe7k3WSHhVsMddDuXLsX9DoZ1VW1G8TnejIYri-rOgErg__",
      "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=LdvliusyWMrcd2NfHniIInrYELdc03QMIlaSm1p~getJSOHH2eZSVH5B8ZUvvcG901CsqKxNYzZ5t0vYBrsiJktwim6EuSD4aDOjAuXq4jWHFprAWzQdxrdSqtPIQBtCiix8uhYuUC5tDA6lNKx8yH69YhykvjGRSykr9RJR6mRZKHNdf7CeP2APcj3leH~H2qowQ-ft~YFZfn5Q66XgdO~av5YZuat0FIJRJuDffr~fJci0jw9YK~FGkw1VBdLH6ZTinfzyl4Vtv1SWrZ~1~oT8a1zKY6QdjzSrLQyQuDe7k3WSHhVsMddDuXLsX9DoZ1VW1G8TnejIYri-rOgErg__",
      "https://s3-alpha-sig.figma.com/img/550c/3057/49d6c4a8efe5849bb6952d297db4e2c1?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=LdvliusyWMrcd2NfHniIInrYELdc03QMIlaSm1p~getJSOHH2eZSVH5B8ZUvvcG901CsqKxNYzZ5t0vYBrsiJktwim6EuSD4aDOjAuXq4jWHFprAWzQdxrdSqtPIQBtCiix8uhYuUC5tDA6lNKx8yH69YhykvjGRSykr9RJR6mRZKHNdf7CeP2APcj3leH~H2qowQ-ft~YFZfn5Q66XgdO~av5YZuat0FIJRJuDffr~fJci0jw9YK~FGkw1VBdLH6ZTinfzyl4Vtv1SWrZ~1~oT8a1zKY6QdjzSrLQyQuDe7k3WSHhVsMddDuXLsX9DoZ1VW1G8TnejIYri-rOgErg__",
    ]);
