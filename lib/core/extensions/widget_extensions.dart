import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget padded(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );

  Widget paddingAll(double value) => padded(EdgeInsets.all(value));
  Widget paddingSymmetric({double h = 0, double v = 0}) =>
      padded(EdgeInsets.symmetric(horizontal: h, vertical: v));
  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      padded(
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));

  Widget centered() => Center(child: this);

  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);

  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(flex: flex, fit: fit, child: this);

  Widget sized({double? width, double? height}) => SizedBox(
        width: width,
        height: height,
        child: this,
      );

  Widget opacity(double value) => Opacity(opacity: value, child: this);

  Widget visible(bool isVisible) => Visibility(
        visible: isVisible,
        child: this,
      );

  Widget safeArea({
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
  }) =>
      SafeArea(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        child: this,
      );
}
