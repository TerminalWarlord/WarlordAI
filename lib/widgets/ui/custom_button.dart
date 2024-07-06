import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    this.width = double.infinity,
    this.height = 50,
    this.padding,
    required this.onClick,
    this.radius = 8,
    required this.widget,
    this.border,
  });
  final double width, height, radius;
  final Color? color;
  final EdgeInsets? padding;
  final void Function() onClick;
  final Border? border;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color ?? const Color(0xFF1D1E3A),
        border: border,
      ),
      child: TextButton(
        onPressed: onClick,
        child: widget,
      ),
    );
  }
}
