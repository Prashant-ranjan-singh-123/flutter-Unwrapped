import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterunwrapped/frequent_used_widget/custom_phone_layout.dart';
import 'package:hexcolor/hexcolor.dart';

/// A widget that demonstrates the usage of SliverList in Flutter.
///
/// SliverList is part of the sliver family of widgets, which are used to create
/// custom scrollable areas in a CustomScrollView. This example demonstrates a
/// simple implementation of SliverList with randomly colored list items.
class SliverListExplain extends StatelessWidget {
  const SliverListExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          // App bar with a title for the list view demo
          title: const Text('SliverList Demo'),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            // A scrollable list with dynamic item content.
            //
            // The SliverList uses a SliverChildBuilderDelegate to create each item
            // in the list. Each item is assigned a random background color.
            SliverList(
              // Delegate to build each list item
              delegate: SliverChildBuilderDelegate(
                    (context, int index) {
                  // Generate a random color
                  final Color randomColor = Color(
                    (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
                  ).withOpacity(1.0);
      
                  // Return a container with custom content for each list item
                  return Container(
                    color: randomColor, // Use the randomly generated color
                    height: 100, // Fixed height for each list item
                    alignment: Alignment.center,
                    // Display the index number of the list item
                    child: Text(
                      'Item $index',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                childCount: 20, // Total number of list items
              ),
            ),
          ],
        ),
      ),
    );
  }
}