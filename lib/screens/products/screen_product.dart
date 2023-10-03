import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/screens/products/components/body.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBuildBar(),
      body: const BodyApp(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBuildBar() {
    return AppBar(
      elevation: 0,
      title: const Text('Dashboard'),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/notification.svg'))
      ],
    );
  }
}