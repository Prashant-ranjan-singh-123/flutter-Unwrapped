import 'package:flutter/material.dart';

/// A simple stateless widget that displays a row of widgets with 
/// evenly spaced main axis alignment.
/// 
/// The row contains four items: three text widgets and an image.
class RowExplain extends StatelessWidget {
  /// Creates a [RowExplain] widget.
  const RowExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Row Example'),
            centerTitle: true,
          ),
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
        // backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),

        /// The body of the Scaffold is a padded [Row] with four children
        /// evenly spaced along the main axis.
        body: Padding(
          // Padding adds space around the [Row].
          padding: const EdgeInsets.all(20.0),
          child: Row(
            // Main axis alignment determines how the children are positioned
            // horizontally. spaceEvenly places the free space evenly between the children.
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First container widget in the row.
              Container(color: Colors.red, height: double.infinity, width: 40,),

              // Second container widget in the row.
              Container(color: Colors.green, height: double.infinity, width: 40,),

              // Third container widget in the row.
              Container(color: Colors.yellow, height: double.infinity, width: 40,),

              // Fourth container widget in the row.
              Container(color: Colors.white, height: double.infinity, width: 40,),

              // Fifth container widget in the row.
              Container(color: Colors.deepOrangeAccent, height: double.infinity, width: 40,),
            ],
          ),
        ),
      ),
    );
  }
}