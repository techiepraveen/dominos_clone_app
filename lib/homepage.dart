import 'package:dominos_clone_app/bestseller.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';
import 'cart.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      floatingActionButton: Bottombar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Deliver to",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("New Delhi", style: TextStyle(fontSize: 14))),
          ],
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      //width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Text("Take Away",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("Dine in",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      //width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.train_outlined,
                            size: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Deliver"),
                                Text("on Train")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Scrollable menu
              SizedBox(
                height: 10,
              ),
              //1st banner
              Container(
                height: 150,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    bannerlist("assets/offer1.jpeg"),
                    bannerlist("assets/offer2.jpeg"),
                    bannerlist("assets/offer3.jpeg"),
                    bannerlist("assets/offer4.jpeg"),
                    bannerlist("assets/banner.jpeg"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Explore Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //2nd banner
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veg PIzza",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Non Veg PIzza",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //2nd menu
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 30.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/garlic.png",
                                  height: 130,
                                  width: 130,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Sides & others",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/daaru.png",
                                  height: 130,
                                  width: 130,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Beverages",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/choco.png",
                                  height: 130,
                                  width: 130,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Desserts",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //banner

              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                child: GestureDetector(
                  onTap: () {
                    print("clicked");
                  },
                  child: Image.asset("assets/banner.jpeg"),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Offers",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          "VIEW  ALL",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
              //offers menu

              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 12.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      bannerlist("assets/offer1.jpeg"),
                      bannerlist("assets/offer2.jpeg"),
                      bannerlist("assets/offer3.jpeg"),
                      bannerlist("assets/offer4.jpeg"),
                      bannerlist("assets/banner.jpeg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Bestsellers",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //Best Seller menu
              Container(
                height: 250,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    bestseller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget bannerlist(String imgpath) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 2.0),
    child: Container(
      //height: 200,
      //width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0), color: Colors.white),
      child: Image.asset(
        imgpath,
        fit: BoxFit.fill,
      ),
    ),
  );
}
