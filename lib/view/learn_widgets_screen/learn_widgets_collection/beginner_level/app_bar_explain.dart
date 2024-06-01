import 'package:flutter/material.dart';
import 'package:flutterunwrapped/frequent_used_widget/custom_phone_layout.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0.5),
        //Appbar
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#022659'),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('AppBar Demo', style: TextStyle(color: Colors.white),),
          actions: [
            Container(
              margin: const EdgeInsets.all(05),
              child: const Icon(Icons.notifications, color: Colors.white,),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: const Icon(Icons.info_outline_rounded, color: Colors.white,),
            )
          ],
        ),
        body: const Center(
          child: Text('Home Page',style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}