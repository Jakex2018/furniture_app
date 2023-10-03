import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.filledColor, this.isSelected= false
  });

  final Color filledColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:  kdefaultPadding/2.5),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration:BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? const Color(0xff707070): Colors.transparent
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,color: filledColor
        ),
      ),
    );
  }
}