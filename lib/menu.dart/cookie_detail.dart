import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom.dart';
import 'cart.dart';

class CookieDetail extends StatefulWidget {
  final assetPath, cookieprice, cookiename;
  CookieDetail({this.assetPath, this.cookieprice, this.cookiename});

  @override
  _CookieDetailState createState() => _CookieDetailState();
}

class _CookieDetailState extends State<CookieDetail> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff545d68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'PICKUP',
          style: TextStyle(fontSize: 20.0, color: Color(0xff545d68)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xff545d68),
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'بفاريا',
              style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE20B0B)),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
              tag: widget.assetPath,
              child: Image.asset(
                widget.assetPath,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              widget.cookieprice,
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE20B0B)),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              widget.cookiename,
              style: TextStyle(fontSize: 24.0, color: Color(0xfff575e67)),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('بسكويت ,حليب ,شوكلاتة ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Color(0xffb4b8b9))),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(onTap: () {
            setstate() {
              _active = true;
            }
          }),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFE20B0B)),
              child: Center(
                child: Text('إضافة إلى السلة',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Row(children: [
            Icon(Icons.star, color: Color(0xffffebf50)),
            Icon(Icons.star, color: Color(0xffffebf50)),
            Icon(Icons.star, color: Color(0xffffebf50)),
            Icon(Icons.star, color: Color(0xffffebf50)),
            Icon(Icons.star, color: Color(0xffffee9c3)),
          ]),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Cart(
            active: _active,
            onTap: () {
              setState(() {
                _active = false;
              });
            },
          ));
        },
        backgroundColor: Color(0xFFE20B0B),
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomBar(),
    );
  }
}
