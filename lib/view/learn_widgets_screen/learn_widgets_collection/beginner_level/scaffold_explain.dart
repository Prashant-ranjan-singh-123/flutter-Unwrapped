import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplainScaffold extends StatelessWidget {
  const ExplainScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        // Scaffold implements the basic material design visual layout structure.

        // The app bar displayed at the top of the screen.
        appBar: AppBar(
          // The title displayed in the app bar.
          title: const Text('Home Page'),
          centerTitle: true,
          // The elevation of the app bar.
          elevation: 4.0,

          // Whether the app bar's elevation animates as the app scrolls.

          // The background color of the app bar.
          backgroundColor: Colors.blue,

          // The content displayed in the leading region of the app bar.
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Get.showSnackbar(const GetSnackBar(
                title: 'Menu Clicked',
                message: 'You have clicked the menu button.',
                duration: Duration(seconds: 2),
              ));
            },
          ),

          // The content displayed in the actions region of the app bar.
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Get.showSnackbar(const GetSnackBar(
                  title: 'Search Clicked',
                  message: 'You have clicked the search button.',
                  duration: Duration(seconds: 2),
                ));
              },
            ),
          ],

          // Whether the app bar should be automatically populated with a back button.
          automaticallyImplyLeading: true,

          // The app bar's title and leading widgets should animate to fit in the toolbar.
          primary: true,

          // The shape of the app bar's material.
          // Determines the appearance of the app bar's border.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),

        // The main content area of the screen.
        body: const Center(
          // The main content of the page, typically centered horizontally and vertically.
          child: Text('Welcome to my awesome app!'),
        ),

        // The floating action button displayed at the bottom right of the screen.
        floatingActionButton: FloatingActionButton(
          // The icon displayed on the floating action button.
          child: const Icon(Icons.add),

          // The callback function called when the floating action button is pressed.
          onPressed: () {
            Get.showSnackbar(const GetSnackBar(
              title: 'Add Clicked',
              message: 'You have clicked the add button.',
              duration: Duration(seconds: 2),
            ));
          },
        ),

        // The position of the floating action button relative to the Scaffold.
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        // The navigation drawer displayed when the user swipes from the left edge of the screen.
        drawer: Drawer(
          // The child displayed in the drawer.
          child: ListView(
            // The list of items displayed in the drawer.
            children: const <Widget>[
              // Add your drawer items here.
            ],
          ),
        ),

        // The bottom navigation bar displayed at the bottom of the screen.
        bottomNavigationBar: BottomNavigationBar(
          // The list of items displayed in the bottom navigation bar.
          items: const [
            BottomNavigationBarItem(
              // The icon displayed for the first item.
              icon: Icon(Icons.home),
              // The label displayed for the first item.
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],

          // The callback function called when an item in the bottom navigation bar is pressed.
          // Typically used to switch between different pages or tabs.
          onTap: (index) {
            Get.showSnackbar(GetSnackBar(
              title: 'Bottom navigation bar Clicked',
              message: 'You have clicked the $index button.',
              duration: const Duration(seconds: 2),
            ));
          },
        ),

        // The bottom sheet displayed at the bottom of the screen.
        bottomSheet: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('This is a bottom sheet.'),
        ),
      ),
    );
  }
}
