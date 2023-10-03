import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/components/chat_and_to_cart.dart';
import 'package:furniture_app/screens/details/components/list_color.dart';
import 'package:furniture_app/screens/details/components/product_poster.dart';
class BodyAppDetail extends StatelessWidget {
  const BodyAppDetail({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Hero( tag: '${product.id}',child: ProductPoster(size: size, image: product.image))),
                const ListColor(),
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: kdefaultPadding),
                  child: Text(product.title , style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 22),),
                ),
                Text('\$${product.price}' , style: const TextStyle(color: kPrimaryColor , fontWeight: FontWeight.bold, fontSize: 15)),
                Padding(
                  padding:  const EdgeInsets.symmetric(vertical: kdefaultPadding),
                  child: Text(product.description, style: const TextStyle(color: kTextLightColor))
                ),
                const SizedBox(height: kdefaultPadding,)],
            ),
          ),
          const ChatAndToCart(),
        ],
      ),
    );
  }
}