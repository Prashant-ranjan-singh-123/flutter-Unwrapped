import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StackExplain extends StatelessWidget {
  const StackExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                    width: 300,
                    height: 300,
                    color: Colors.yellow,
                  ),
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
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
