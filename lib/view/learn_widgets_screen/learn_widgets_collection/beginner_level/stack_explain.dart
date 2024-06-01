import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

class StackExplain extends StatelessWidget {
  const StackExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#022659'),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Stack Demo',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            child: Stack(
              children: [
                // Max Size
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                ),
                Center(
                  child: Container(
                    width: 130,
                    height: 130,
                    color: Colors.blue,
                  ),
                ),
                Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                  ),
                ),
                const Center(
                    child: Text('Stack')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
