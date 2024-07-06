import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    required this.label,
    this.width = double.infinity,
    this.height = 50,
    this.padding,
    required this.onClick,
    this.radius = 8,
    this.style,
    this.border,
  });
  final String label;
  final double width, height, radius;
  final Color? color;
  final EdgeInsets? padding;
  final void Function() onClick;
  final TextStyle? style;
  final Border? border;

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
        child: Text(
          label,
          style: style,
        ),
      ),
    );
  }
}
