import 'package:flutter/material.dart';

class CutamButtonSize extends StatelessWidget {
  final String size;
  final bool active;

  const CutamButtonSize({Key key, this.size, this.active}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      width: 90,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(color: active? Colors.white :Colors.transparent,
      border: Border.all(
        color: Colors.white,
        width: 1.5
      ),
      borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Text(size, style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: active ?Colors.black :Colors.white
      ),),
    );
  }
}
