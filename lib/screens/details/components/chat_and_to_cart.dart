import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class ChatAndToCart extends StatelessWidget {
  const ChatAndToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kdefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding , vertical: kdefaultPadding/2),
      decoration:  BoxDecoration(
        color:const Color(0xfffcbf1e),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child:  Row(children: <Widget>[
        SvgPicture.asset('assets/icons/chat.svg',height: 18),
        const SizedBox(width: kdefaultPadding/2),
        const Text('Chat' , style: TextStyle(color: Colors.white)),
        const Spacer(),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text('Add to Cart')),
      ]),
    );
  }
}