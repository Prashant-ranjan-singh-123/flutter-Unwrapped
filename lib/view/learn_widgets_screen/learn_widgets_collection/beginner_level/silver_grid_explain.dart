import 'package:flutter/material.dart';
import 'dart:math';

/// A widget that demonstrates the usage of SliverGrid in Flutter.
///
/// SliverGrid is part of the sliver family of widgets, which are used to create
/// custom scrollable areas in a CustomScrollView. This example demonstrates a
/// simple implementation of SliverGrid with a maximum cross-axis extent.
class SliverGridExplain extends StatelessWidget {
  const SliverGridExplain({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a Random object to generate random colors
    final Random random = Random();

    return Scaffold(
      appBar: AppBar(
        // App bar with a title for the grid view demo
        title: const Text('SliverGrid Demo'),
      ),
      body: CustomScrollView(
        slivers: [
          // A grid with a maximum cross-axis extent.
          //
          // The SliverGrid uses a SliverGridDelegateWithMaxCrossAxisExtent to
          // control the layout of the grid. Each child in the grid is created
          // using the SliverChildBuilderDelegate.
          SliverGrid(
            // Grid delegate with max cross-axis extent of 150 pixels
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150.0, // Maximum width of each grid item
              mainAxisSpacing: 10.0, // Spacing between rows
              crossAxisSpacing: 10.0, // Spacing between columns
              childAspectRatio: 1.0, // Aspect ratio of each grid item
            ),
            // Delegate to build each grid item
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                // Generate a random color
                final Color randomColor = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  1,
                );

                // Return a container with custom content for each grid item
                return Container(
                  alignment: Alignment.center,
                  color: randomColor, // Use the randomly generated color
                  // Display the index number of the grid item
                  child: Text(
                    'Item ${index+1}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              childCount: 50, // Total number of grid items
            ),
          ),
        ],
      ),
    );
  }
}