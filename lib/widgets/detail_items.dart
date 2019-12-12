import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

class DetailsPage extends StatelessWidget {
  String title;
  String price;
  String description;
  DetailsPage({this.title, this.price, this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 360,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: itemListColor,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              margin: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            title,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: drawerBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "0",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: drawerBackgroundColor),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: drawerBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255,244,126,79),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FlatButton.icon(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          //`Icon` to display
                          label: Text(
                            'Add to Car',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          //`Text` to display
                          onPressed: () {
                            //Code to execute when Floating Action Button is clicked
                            //...
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 120,
              width: 140,
              height: 140,
              child: Container(
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage("assets/img/pizza_all.jpg")))),
            )
          ],
        ),
      ),
    );
  }
}
