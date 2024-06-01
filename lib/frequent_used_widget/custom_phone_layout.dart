import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomPhoneLayout extends StatelessWidget {
  Widget child;
  CustomPhoneLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: HexColor('#030301'), width: 10),
              right: BorderSide(color: HexColor('#030301'), width: 10),
              bottom: BorderSide(color: HexColor('#030301'), width: 10),
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: HexColor('#030301'),
              height: 40,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: HexColor('#15161A'),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: HexColor('#06092D'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    height: 10,
                    decoration: BoxDecoration(
                        color: HexColor('#171717'),
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              )),
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
