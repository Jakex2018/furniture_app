import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key, required, required this.onChanged,
  });
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kdefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding, vertical: kdefaultPadding/2),
      decoration: BoxDecoration(
        color:Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20)
      ),
      child:TextField(
        onChanged:onChanged ,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: 'Search',
          hintStyle:const TextStyle(color: Colors.white)
        ),
      ),
    );
  }
}