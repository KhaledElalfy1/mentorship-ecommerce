import 'package:flutter/material.dart';

class MainCardModel {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;
   final String image;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;

  const MainCardModel({
    required this.child,
    required this.padding,
    required this.width,
    required this.height,
    required this.image,
    required this.borderRadius,
    this.backgroundColor,
  });
}
