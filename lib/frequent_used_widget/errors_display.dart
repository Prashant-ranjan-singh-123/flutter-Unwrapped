import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ErrorDisplay{
  void showUnderConstructionDialog() {
    Get.dialog(
      AlertDialog(
        backgroundColor: HexColor('#1F41BB'), // Set the background color to white
        shadowColor: Colors.black,
        title: const Text(
          "Under Construction",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromRGBO(250,250,250, 1), fontWeight: FontWeight.w700, fontFamily: 'Oswald'),
        ),
        content: Text(
          "This Feature is under construction and we will finish it soon.",
          style: TextStyle(color:const Color.fromRGBO(250,250,250, 1).withOpacity(0.9), fontWeight: FontWeight.w500),
        ),
        actions: [
          MaterialButton(
            color: const Color.fromRGBO(255,15,15, 0.6),
            onPressed: (){
              Get.back();
            },
            child: Text(
              "OK",
              style: TextStyle(color:const Color.fromRGBO(250,250,250, 1).withOpacity(0.9), fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

}