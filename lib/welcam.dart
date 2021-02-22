import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page1/ui/login_Page.dart';
import 'package:page1/ui/rigester_page.dart';

class Splach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assest/image/img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      }));
                    },
                    child: Text('تسجيل ',
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    color: Colors.grey[200],
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Text('تخطي',
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    color: Colors.grey[200],
                  )
                ],
                // Text('تسجيل',
                //     style: TextStyle(fontSize: 20, color: Colors.red)),
                // Text('تخطي', style: TextStyle(fontSize: 20, color: Colors.red))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
