import 'package:flutter/material.dart';

/// A simple stateless widget that displays a column of widgets with
/// evenly spaced main axis alignment.
///
/// The column contains four items: three text widgets and an image.
class ColumnExplain extends StatelessWidget {
  /// Creates a [ColumnExplain] widget.
  const ColumnExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Column Example'),
          centerTitle: true,
        ),
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
        // backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),

        /// The body of the Scaffold is a padded [Column] with four children
        /// evenly spaced along the main axis.
        body: Column(
          // Main axis alignment determines how the children are positioned
          // vertically. spaceEvenly places the free space evenly between the children.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First text widget in the column.
            const Center(child: Text('First item in the column')),

            // Second text widget in the column.
            const Text('Second item in the column'),

            // An image asset included in the column.
            Image.asset('assets/images/dart_logo.png'),

            // Fourth text widget in the column.
            const Text('Fourth item in the column'),
          ],
        ),
      ),
    );
  }
}