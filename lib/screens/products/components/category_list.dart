import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['all' , 'sofa' , 'park bench' ,'armChair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(vertical: kdefaultPadding*2),
      height: 40,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding *1.5),
            margin: EdgeInsets.only(left: kdefaultPadding *2 ,
              right: index == categories.length -1 ? kdefaultPadding : 0),
            decoration: BoxDecoration(
              color: index == selectIndex ? Colors.white.withOpacity(0.4): Colors.transparent,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text(categories[index], style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}