import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  double _upperValue = 80;
  double _lowerValue = 10;
  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      handler: FlutterSliderHandler(
        decoration: const BoxDecoration(),
        child: Container(
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: Colors.transparent,
          ),
        ),
      ),
      rightHandler: FlutterSliderHandler(
        decoration: const BoxDecoration(),
        child: Container(
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: Colors.transparent,
          ),
        ),
      ),
      trackBar: const FlutterSliderTrackBar(
        activeTrackBarHeight: 5,
        activeTrackBar: BoxDecoration(
          color: Color(0xff33302E),
        ),
      ),
      values: [_lowerValue, _upperValue],
      rangeSlider: true,
      max: 500,
      min: 0,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
    );
  }
}
