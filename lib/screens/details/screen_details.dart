import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/components/body.dart';

class ScreenDetails extends StatelessWidget {
  const ScreenDetails({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBuildBarDetail(context),
      body: BodyAppDetail(product: product,),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBuildBarDetail(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kdefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      title: Text('Back', style: Theme.of(context).textTheme.bodyMedium),
      actions: <Widget>[IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icons/cart_with_item.svg'))],
    );
  }
}