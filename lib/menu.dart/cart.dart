import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:page1/menu.dart/custamButtonQty.dart';
import 'package:page1/menu.dart/custamButtonSize.dart';

class Cart extends StatefulWidget {
  final bool active;
  final Function onTap;

  const Cart({Key key, this.active, this.onTap}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _qty = 1;
  void _add() {
    setState(() {
      _qty += 1;
    });
  }

  void _remove() {
    setState(() {
      if (_qty > 1) _qty -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      curve: Curves.decelerate,
      bottom: widget.active ? 5 : -600,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: MediaQuery.of(context).size.height * 0.70,
        width: MediaQuery.of(context).size.width * 0.96,
        decoration: BoxDecoration(
            color: Color(0xfff23232b),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          children: <Widget>[
            Text(
              'بفاريا',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            _itemSize(),
            SizedBox(
              height: 40,
            ),
            _quantity(add: _add, remove: _remove, qty: _qty),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _itemSize() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'الحجم',
        style: TextStyle(fontSize: 26, color: Colors.white),
      ),
      SizedBox(
        height: 14,
      ),
      Row(
        children: <Widget>[
          CutamButtonSize(
            size: "كبير",
            active: false,
          ),
          CutamButtonSize(
            size: "وسط",
            active: true,
          ),
          CutamButtonSize(
            size: "صغير",
            active: false,
          ),
        ],
      )
    ],
  );
}

Widget _quantity({Function add, Function remove, int qty}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'الكمية',
        style: TextStyle(fontSize: 26, color: Colors.white),
      ),
      SizedBox(
        height: 14,
      ),
      Row(
        children: <Widget>[
          CustamButtonQty(
            iconData: Icons.add,
            onTap: add,
          ),
          _boxQuantity(qty),
          CustamButtonQty(iconData: Icons.remove, onTap: remove),
        ],
      )
    ],
  );
}

Widget _boxQuantity(int qty) {
  return Container(
    height: 70,
    width: 180,
    alignment: Alignment.center,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Text(
      qty.toString(),
      style: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
