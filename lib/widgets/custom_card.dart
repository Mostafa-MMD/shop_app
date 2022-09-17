import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40.0,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.0,
                  offset: Offset(10.0, 10.0),
                ),
              ],
            ),
            child: Card(
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.title.substring(0, 6)}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price}',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800]!,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20.0,
            top: -60,
            // top: - any nomber, = bottom: any nomber,
            child: Image.network(
              product.image,
              height: 100.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
