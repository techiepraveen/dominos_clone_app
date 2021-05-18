import 'package:flutter/material.dart';

Widget bestseller(String name, String imgpath, String price, String size) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Image.asset(
              imgpath,
              height: 190,
              width: 200,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 5.0,
              left: 10.0,
              //bottom: 20.0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.green),
                    color: Colors.white),
                child: Icon(
                  Icons.circle,
                  color: Colors.green[800],
                  size: 10,
                ),
              ),
            ),
            Positioned(
              top: 140.0,
              bottom: 40.0,
              left: 14,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Positioned(
              left: 13.0,
              bottom: 50.0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(price,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: 20,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white,
                          ),
                          child: Text(
                            size,
                            style: TextStyle(
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 80,
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        )),
  );
}
