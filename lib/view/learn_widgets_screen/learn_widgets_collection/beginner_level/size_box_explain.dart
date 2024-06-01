import 'package:flutter/material.dart';

class SizeBoxExplain extends StatelessWidget {
  const SizeBoxExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SizedBox Example'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                // The width of the box.
                width: 200.0,

                // The height of the box.
                height: 100.0,

                // The child contains a image.
                child: Image.asset('assets/images/india_flag.jpg', fit: BoxFit.cover,)
              ),
              // For Giving Distance between widget in column
              const SizedBox(height: 20,),
              SizedBox(
                // The width of the box.
                  width: 250.0,

                  // The height of the box.
                  height: 150.0,

                  // The child contains a image.
                  child: Image.asset('assets/images/india_flag.jpg', fit: BoxFit.cover,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
