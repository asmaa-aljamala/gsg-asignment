import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Container(
            width: 150,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                  },
                                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assest/image/phone-receiver (1).png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assest/image/whatsapp (2).png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assest/image/worlwide.png'),
                      fit: BoxFit.cover,
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
