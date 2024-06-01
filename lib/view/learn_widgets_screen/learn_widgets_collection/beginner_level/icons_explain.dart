import 'package:flutter/material.dart';

/// A simple stateless widget that displays a row of icons with
/// evenly spaced main axis alignment.
///
/// The row contains three different icons demonstrating various
/// ways to customize them.
class IconExplain extends StatelessWidget {
  /// Creates an [IconExplain] widget.
  const IconExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Icons Example'),
          centerTitle: true,
        ),
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
        // backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),

        /// The body of the Scaffold is a padded [Row] with three icons and center is used to center those widget on screen
        body: const Center(
          child: Row(
            // Main axis alignment determines how the children are positioned
            // horizontally. spaceEvenly places the free space evenly between the children.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First icon widget in the row.
              Icon(
                Icons.home,
                color: Colors.blue,
                size: 50.0,
              ),

              // Second icon widget in the row.
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 60.0,
              ),

              // Third icon widget in the row.
              Icon(
                Icons.settings,
                color: Colors.green,
                size: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
