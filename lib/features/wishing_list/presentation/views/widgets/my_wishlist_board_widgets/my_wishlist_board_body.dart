import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_wishlist_appbar.dart';
import 'my_wishlist_board_category_widget.dart';

class MyWishlistBoardBody extends StatelessWidget {
  const MyWishlistBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://s3-alpha-sig.figma.com/img/1050/1ab0/6dbf03cf542423241330b56b977b6ba0?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iq2uIQzNMCTOvPWWQhMSrx0IB-UPN0yzCpAZopJqf24QGS1lklg3EINRQTDaRadnc2yImVKVI47TKBItYf1qE22Gr19vlFAlCsxqwfvvjJ30YiifrJDYEph98V1ztsDfeqek6HAJaCClNlrGfZpVPAB04tZ1RABDct05ZzWZju7~oeIe9ijcqMiC0BZDkuTQLK3jYdmw7839FVfLGnOpnevOJyQS6vjcr3TOVB22MeJi17xsKLolHYkv0ecXpt28qw9HKiWU8JjLy1TZK~G-mp2VxMObrSghMoS96lXOmI35wSplgOMiZor1C5GWB2QKB0NgSMb4ozSafwbky0x68w__",
      "https://s3-alpha-sig.figma.com/img/b7bf/b385/1da0c16229b9c19d671dc7123c9e1736?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZyZFTNeoB2px7G53~BG6a~d8qYylmmjjkEp1LgZ57ciTLkQSm4j5nQOQEHHfraMu4vLEhYTS6SP5YMkfzxcxn85h-VBBhZ-fETr7VzJf2MsRFQKVMapNBtQLaOusEBUw3v3Ye-KhENnAzqZQYnIelkEgYc2GBYK4RHB8jMrVdvWeNP0SKstcY6OL0K293DKogccoGP-BJiN9Zgc8k61MFycqiCQQS6kxM80Zp94nYqiPSniVPrHysK7q1y5Bt3cg7Ak4048SjLaeqS6jjxxxFZZ56DS1uX~iy4ry63pvYlM-HDxYZIDdRRsiOCcwEqrKtEB0wYk1bBxrWXfYNqxbUg__",
      "https://s3-alpha-sig.figma.com/img/0cff/5a4f/102c7fa7b7a78da8953f507d10617f89?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JK03ZtljE7IAhX7KsBcXERWs8HTRBHSVlHB72cuMLpR0tVa1z-X~zj9xS2Vo25MmRWde5kzYxAi5Cu31fi56eFEfHYIeuF2eISkRrqTdfNU1bZOHZDKJQt88du-0z2jaBgv4FMrkCADTWo0v4322CA670UD~Thq68NXAlENu3X4BvgkZ~7~XTlg0z9deyFLT1rn2Zv4IBcdl87tPHmGxigVB38RpKOW728Q2qI8s7zepmHruE3vk6ysPUmlFGQzDzmiFoTFv8Dc7LI2Z-PkfutVIu0NIuSiTqDIjW7hKs49S-Vq1ECMrT2ZvYc7LoVDu-yZCEqGgzve9b86Cdz8iNA__",
      "https://s3-alpha-sig.figma.com/img/1f99/83a8/ba59c8db09614b0b582ee9d3f9f07162?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=By6LPsj6Rr7pMD2iHfS1rANVEd7F67SGFfeYmZjT9vtCx82m74IQW08mT5wgMkbC9FGHq31C33GVMd4VBbJ5EKqV965m3gRWS6lRqjH2Xn5zC0FjKeGI2Lg7qJ3ENpzvEX~wG06l0uF~Zf6d~zz2TNRVx9iCg3XozEYktwlwDUUH~mwaRJRJm0f5x9VpJTFY4yRzQhxsjKMJWFPV8esRxlQuWKNHJwz~xsSWX4cA0sS1v0eYuTVBr8jo1q-rPCH4vozu6Y00k6Z5sAictOJXwbQ9ukVDdAZ31-4yeU5LR14ZHQaSqGNFvbod~QM1amA5JtdnVauDvPLNujceIwQThA__",
      "https://s3-alpha-sig.figma.com/img/1423/cf1e/8711d7c8ac28acf44ec48b8dc40bbcf7?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ruy3sWO2Nusnqxt0Rfu0eBxG9Smf0l7c~7HqvSf7tChS8zMZjH~9Azmd7UhdFk-FEHhbv3ng3cKkNAkzy6449Rg6Az-ROcbksyIgm3QqW3t6~kF2P-mdyoNPrFo78WTTZLJbh04VnBw5R2KS4lbNd58gLRmYkTh9ft-RxTdM3c4iA45EUt216zL10E0-BDEy~76QS04Q7r~9-2N1lEBGk92GUsq7H6pgEfTo9fzbcpnxLHLBO0kluIfBOlT7L1UgXnDTP3Whx~b6lpNyssOlPL6sIWJ5vurrYZw-rpvT98uS15qRDNopsaj37ZIEDZGpUW9AcUBFVX2zFABQiE0yYw__",
      "https://s3-alpha-sig.figma.com/img/f117/93b6/ce57358614519b0d191b09a987f60f67?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NTZJxpNMVvl7s4GP5z~6J3imEsia8-p2aKYGhPa8zAwtBel4tC1hBHZTvmx1N9YHprBD-8yWbrmZtXjhD-pzQjVZffGFZPBSqXjhXhOKn2r~iM2Gs6RDBHJNsAshm9j2ZMnLAfIj1FQy3BMX5Jn~4esiz3h3IKwhosjXg5F82KpgRCv7KvWkGXmOgTwN9oeMz3YhYrbjOaog3tOdyS3Jfi0WIoAnCNcgr-qEFaRcQO4I9VCgrNnmf964VuUZKmtqFo~qZiBrH6swV23xcfP9s6XbvvCOHGZm5gQ5ttXkAsit1VqRVYtWPVbTDgrYnvw0S2aBJCGWrhdNtQzHDkZMuQ__"
    ];

    return Padding(
      padding: EdgeInsets.only(top: 63.h, left: 22.w, right: 22.w,bottom: 15.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomWishlistAppbar(),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Going out outfits',
              numOfProducts: 36,
            ),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Office Fashion',
              numOfProducts: 20,
            ),
            MyWishlistBoardCategoryWidget(
              images: images,
              categoryName: 'Home outfits',
              numOfProducts: 15,
            ),
          ],
        ),
      ),
    );
  }
}
