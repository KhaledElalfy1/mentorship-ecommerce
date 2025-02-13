import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    required this.padding,
    required this.width,
    required this.height,
    required this.image,
    required this.borderRadius,
    this.backgroundColor,
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;
  final String image;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          color: backgroundColor ?? Colors.transparent,
        ),
        child: child,
      ),
    );
  }
}
