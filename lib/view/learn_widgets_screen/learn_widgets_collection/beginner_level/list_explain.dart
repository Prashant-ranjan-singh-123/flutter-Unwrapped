import 'package:flutter/material.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

/// A simple stateless widget that demonstrates the use of [ListView] and [ListTile]
/// to create a list of items with leading icons, titles, subtitles, and trailing icons.
class List_Explain extends StatelessWidget {
  /// Creates a [List_Explain] widget.
  const List_Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
        // backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),

        appBar: AppBar(
          // AppBar provides a material design app bar with a title.
          // iconTheme: IconThemeData(color: Colors.black),
          // backgroundColor: Colors.white,
          title: Text(
            'ListView Demo',
          ),
          centerTitle: true,
        ),

        /// The body of the Scaffold is a [ListView] that contains multiple [ListTile] widgets.
        body: ListView(
          children: const [
            // ListTile with leading icon, title, subtitle, and trailing icon.
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Call your friend'),
              subtitle: Text('Click to make a call'),
              trailing: Icon(Icons.call),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text('Send an email'),
              subtitle: Text('Click to send an email'),
              trailing: Icon(Icons.send),
            ),

            ListTile(
              leading: Icon(Icons.map),
              title: Text('Find a location'),
              subtitle: Text('Click to open map'),
              trailing: Icon(Icons.location_on),
            ),

            ListTile(
              leading: Icon(Icons.message),
              title: Text('Send a message'),
              subtitle: Text('Click to send a message'),
              trailing: Icon(Icons.message),
            ),

            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Take a photo'),
              subtitle: Text('Click to open camera'),
              trailing: Icon(Icons.camera_alt),
            ),

            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Set an alarm'),
              subtitle: Text('Click to set an alarm'),
              trailing: Icon(Icons.access_alarm),
            ),

            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Add to calendar'),
              subtitle: Text('Click to add an event'),
              trailing: Icon(Icons.event),
            ),

            ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Check the weather'),
              subtitle: Text('Click to see the weather forecast'),
              trailing: Icon(Icons.cloud_queue),
            ),

            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Play some music'),
              subtitle: Text('Click to play music'),
              trailing: Icon(Icons.play_arrow),
            ),

            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shop online'),
              subtitle: Text('Click to shop online'),
              trailing: Icon(Icons.shopping_bag),
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text('Read a book'),
              subtitle: Text('Click to read a book'),
              trailing: Icon(Icons.library_books),
            ),
          ],
        ),
      ),
    );
  }
}
