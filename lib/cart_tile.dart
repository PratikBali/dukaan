import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  late final String itemTitle;
  late int itemQuantity;
  late final String imgSrc;
  late VoidCallback removeFromCartCallback;

  CartTile(
      {required this.itemTitle,
        required this.itemQuantity,
        required this.imgSrc,
        required this.removeFromCartCallback});

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
                        onPressed: itemQuantity > 0 ? removeFromCartCallback : null,
                        child: Icon(Icons.delete_forever),
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
