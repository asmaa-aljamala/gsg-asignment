import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page1/ui/favorit.dart';

import 'menu.dart/menu1.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Container(
                height: 500,
                width: 340,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/image/img1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Menu()));
            },
          ),
          Container(
            width: 150,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Favrot();
                    }));
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assest/image/phone-receiver (1).png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('asma');
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Favrot();
                    }));
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assest/image/whatsapp (2).png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('asma');
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Menu();
                    }));
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assest/image/worlwide.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
