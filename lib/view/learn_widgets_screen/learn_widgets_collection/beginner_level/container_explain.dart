import 'package:flutter/material.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

class ContainerExplain extends StatelessWidget {
  const ContainerExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            // The alignment of the child within the container.
            alignment: Alignment.center,

            // The padding space around the container's child.
            padding: const EdgeInsets.all(16.0),

            // The margin space around the container.
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),

            // The width of the container.
            width: 200.0,

            // The height of the container.
            height: 100.0,

            // The decoration to paint behind the child.
            decoration: BoxDecoration(

              // The color of the container.
              color: Colors.blue,

              // The border of the container.
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),

              // The border radius of the container.
              borderRadius: BorderRadius.circular(10.0),

              // The gradient used to fill the container.
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.green],
              ),
            ),

            // The transformation matrix to apply before painting the container.
            transform: Matrix4.rotationZ(0.1),

            // Whether the container should clip its contents to its bounds.
            clipBehavior: Clip.none,

            // The child contained by the container.
            child: const Text(
              'Hello, Container!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
