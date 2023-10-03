import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key, required this.product, required this.itemIndex, required this.press,
  });


  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: kdefaultPadding/2, horizontal: kdefaultPadding
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //Background Card
            Container(
              height: 204,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kSecondaryColor : Colors.blue,
                boxShadow: const [adefaultShadow]
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22)
                ),
              ),
            ),
            //chair
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.asset(product.image , fit: BoxFit.cover,),
                ),
              ),
            ),
            //title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
                      child: Text(product.title, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold , fontSize: 20)),
                    ),
                    //extra space between padding and container
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding * 1.5 , vertical: kdefaultPadding / 4),
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , bottomLeft: Radius.circular(10) , topRight: Radius.circular(30)),
                      ),
                      child: Text('\$${product.price}', style: Theme.of(context).textTheme.labelLarge),
                    ),
                  ],
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}