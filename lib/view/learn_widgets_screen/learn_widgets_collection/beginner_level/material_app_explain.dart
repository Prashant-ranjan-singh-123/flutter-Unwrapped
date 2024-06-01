import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MaterialAppExplain extends StatelessWidget {
  const MaterialAppExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The title of the application, displayed in the system task switcher.
      title: 'My Awesome App',

      // The overall theme of the application, including colors, typography, and shapes.
      theme: ThemeData(
        // The primary color swatch used for the application's visual elements.
        primarySwatch: Colors.blue,

        // The hint color used for elements that need to be hint out.
        hintColor: Colors.orange,

        // The default font family used throughout the application.
        fontFamily: 'Roboto', // Customizing the font family
      ),

      // The widget that represents the home page of the application.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        // The app bar displayed at the top of the screen.
        appBar: AppBar(
          title: const Text('Home Page', style: TextStyle(color: Colors.white),), // The title displayed in the app bar.
          centerTitle: true,
          backgroundColor: HexColor('#022659'),
          iconTheme: const IconThemeData(color: Colors.white),
        ),

        // The main content area of the screen.
        body: const Center(
          child: Text('Welcome to my awesome app!', style: TextStyle(color: Colors.white),), // The main content of the page.
        ),
      ),
    );
  }
}