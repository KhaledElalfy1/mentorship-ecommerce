import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  /// Replace the current route of the navigator that most tightly encloses the
  /// given `context` with a new route.
  ///
  /// The new route is pushed onto the navigator that most tightly encloses the
  /// given `context`, and the previous route is removed from the navigator.
  ///
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension SpaceExtensions on num {
  SizedBox get addVerticalSpace    => SizedBox(height: h);
  SizedBox get addHorizontalSpace     => SizedBox(width: w);
}

extension AlignExtension on Widget {
  Widget align({required Alignment alignment ,required Widget child}) {
    return Align(
      alignment: alignment,
      child: child,
    );
  }
}