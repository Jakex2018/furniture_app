import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/screen_details.dart';
import 'package:furniture_app/screens/products/components/category_list.dart';
import 'package:furniture_app/screens/products/components/products_card.dart';
import 'package:furniture_app/screens/products/components/search_box.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      bottom: false,
      child: Column(
        children:<Widget> [
          SearchBox(onChanged: (value) {}),
          const CategoryList(),
          const SizedBox(height: kdefaultPadding/2),
          Expanded(
            child: Stack(
              children:<Widget> [
                Container(
                  margin: const EdgeInsets.only(top:70),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40) , topRight: Radius.circular(40)),
                    color: Colors.white
                  ),
                ),
                ListView.builder(itemCount: products.length,itemBuilder: (context, index) => ProductsCard(product: products[index], itemIndex: index, 
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenDetails(product: products[index],)));
                  },
                ),),
              ],
            )
          ),
        ],
      ),
    );
  }
}