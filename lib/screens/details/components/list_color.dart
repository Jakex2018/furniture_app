import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/details/components/color_dot.dart';
class ListColor extends StatelessWidget {
  const ListColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: kdefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(filledColor: Color(0xff80989a), isSelected: true,),
          ColorDot(filledColor: Color(0xffff5200)),
          ColorDot(filledColor: kPrimaryColor),
          
        ],
      ),
    );
  }
}