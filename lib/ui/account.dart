import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('حسابي'),
          centerTitle: true,
          // backgroundColor: Color(0xff963369),
          backgroundColor: Colors.red,
          elevation: 3,
          leading: Icon(
            Icons.search,
            color: Colors.black,
            size: 30.0,
          ),
          actions: [
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'assest/image/User 01a.png',
              ),
              SizedBox(
                height: 20,
              ),
              Text('أسماء يونس جميل الجملة',
                  style: TextStyle(fontSize: 20, color: Colors.red)),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 48,
                width: 300,
                color: Colors.grey[200],
                child: Text('asmayaljamala@gmail.com ',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 48,
                width: 300,
                color: Colors.grey[200],
                child: Text('0592746382 ',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 48,
                width: 300,
                color: Colors.grey[200],
                child: Text('انثى ',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 300,
                  color: Colors.grey[200],
                  child: Text('123464678 ',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                onPressed: () {},
                child: Text('تعديل',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                color: Colors.red,
              )
            ],
          ),
        ));
  
  }
}
