//mport 'dart:html';

import 'package:flutter/material.dart';

import 'bestseller.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.blue[800],
          actions: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "2 items in cart",
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("You pay: Rs 490",
                              style: TextStyle(fontSize: 14)),
                        ),
                        //Text("rs 490"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Cartwidget(),
          Cartwidget(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 10.0, bottom: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Frequently Bought Together",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "EXPLORE MENU",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.height - 185.0,
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  bestseller(
                      "Peppy Paneer", "assets/pizza.jpeg", "Rs 279", "Medium"),
                  bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                      "Rs 395", "Medium"),
                  bestseller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  bestseller(
                      "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                  bestseller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  bestseller(
                      "Peppy Paneer", "assets/pizza.jpeg", "Rs 279", "Medium"),
                  bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                      "Rs 395", "Medium"),
                  bestseller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  bestseller(
                      "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                  bestseller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 180,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sub Total"),
                                Text("Rs 398"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount"),
                              Text("0.00"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Taxes and Charges"),
                              Text("Rs 92"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Grand Total"),
                              Text("Rs 490"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
      //Cartwidget(value: _value),
    );
  }
}

// ignore: must_be_immutable
class Cartwidget extends StatefulWidget {
  int _value = 1;

  @override
  _CartwidgetState createState() => _CartwidgetState();
}

class _CartwidgetState extends State<Cartwidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: Container(
            height: 170,
            width: 600,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        // 1st row
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/pizza.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //2nd row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Margherita",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("Medium | New Hand Tossed",
                                          style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 14)),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              alignment: Alignment.topCenter,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.5),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                //child: Text("sa"),
                                                child: IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(
                                                      Icons.delete,
                                                    ),

                                                    //iconSize: 20,
                                                    onPressed: null),
                                              ),
                                            ),
                                            Container(
                                                height: 30,
                                                width: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 0.5)),
                                                child: Text("2")),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.5)),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(Icons.add),
                                                    onPressed: null),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //3rd row
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              width: 100,
                              height: 100,
                              // color: Colors.orange,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Rs 199.00",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                              width: 600,
                              height: 40,
                              color: Colors.grey[300],
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: widget._value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Product Details"),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Mozilla Cheese"),
                                      ),
                                      value: 2,
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      widget._value = value;
                                    });
                                  },
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
