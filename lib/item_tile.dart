import 'package:flutter/material.dart';
import 'item_data.dart';

class ItemTile extends StatelessWidget {
  final String itemTitle;
  int itemQuantity;
  final String imgSrc;
  VoidCallback addToCartCallback;

  ItemTile(
      {required this.itemTitle,
      required this.itemQuantity,
      required this.imgSrc,
      required this.addToCartCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Column(
            children: <Widget>[
              Text(itemTitle),
              Image.asset(
                imgSrc,
                scale: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Quantity: $itemQuantity',
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 2.0,
                        wordSpacing: 3.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30.0),
                      child: ElevatedButton(
                        onPressed: itemQuantity > 0 ? addToCartCallback : null,
                        child: Icon(Icons.add_shopping_cart),
                        style: ElevatedButton.styleFrom(
                          // splashFactory: NoSplash.splashFactory,
                          backgroundColor: itemQuantity > 0 ? Colors.lightBlueAccent : Colors.grey,
                          minimumSize: Size(20, 50)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
