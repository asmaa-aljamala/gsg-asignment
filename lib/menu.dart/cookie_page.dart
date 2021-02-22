import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'cookie_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfaf8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 0.0),
            width: 11100,
            height: 11100,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('كيكة', '\$4.99', 'assest/image/img1.jpg', false,
                    false, context),
                _buildCard('بفاريا', '\$5.99', 'assest/image/img2.jpg', false,
                    false, context),
                _buildCard('شوكولاتة', '\$8.99', 'assest/image/img4.jpg', false,
                    false, context),
                _buildCard('دونات', '\$8.99', 'assest/image/img5.jpg', false,
                    false, context),
                _buildCard('دونات', '\$8.99', 'assest/image/img8.jpg', false,
                    false, context),
                _buildCard('دونات', '\$8.99', 'assest/image/img9.jpg', false,
                    false, context),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookieprice: price,
                    cookiename: name,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isFavorite
                      ? Icon(
                          Icons.favorite,
                          color: Color(0xFFE20B0B),
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Color(0xFFE20B0B),
                        )
                ],
              ),
            ),
            Hero(
                tag: imgPath,
                child: Container(
                  height: 80.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.contain)),
                )),
            SizedBox(height: 7.0),
            Text(
              price,
              style: TextStyle(color: Color(0xFFE20B0B), fontSize: 14.0),
            ),
            Text(
              name,
              style: TextStyle(color: Color(0xFFE20B0B), fontSize: 14.0),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                color: Color(0xffebebebe),
                height: 1.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFE20B0B),
                        size: 12.0,
                      ),
                      Text(
                        'add to cart',
                        style:
                            TextStyle(color: Color(0xFFE20B0B), fontSize: 12.0),
                      ),
                    ],
                    if (!added) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFFE20B0B),
                        size: 12.0,
                      ),
                      Text('3',
                          style: TextStyle(
                              color: Color(0xFFE20B0B),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
