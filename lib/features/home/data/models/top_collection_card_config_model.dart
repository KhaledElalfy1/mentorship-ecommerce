import 'package:flutter/material.dart';

class TopCollectionCardConfigModel {
  final double? width;
  final double height;
  final double ellipseWidth;
  final double ellipseHeight;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle style;

  const TopCollectionCardConfigModel({
    this.width,
    required this.height,
    required this.ellipseWidth,
    required this.ellipseHeight,
    this.padding,
    this.borderRadius,
    required this.style,
  });
}
