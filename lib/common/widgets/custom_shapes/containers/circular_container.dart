import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.child,
    required this.backgroundColor,
    this.padding,
    this.margin,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 400),
        color: backgroundColor,
      ),
    );
  }
}
