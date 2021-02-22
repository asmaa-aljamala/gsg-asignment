import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustamButtonQty extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  const CustamButtonQty({Key key, this.iconData, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 80,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 3),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Color(0xFFDAD18F), width: 2.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Icon(
          iconData,
          size: 40,
          color: Color(0xffffebf50),
        ),
      ),
    );
  }
}
