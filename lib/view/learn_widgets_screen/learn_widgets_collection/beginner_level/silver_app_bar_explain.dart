import 'package:flutter/material.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

class SilverAppBarExplain extends StatelessWidget {
  const SilverAppBarExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            // SliverAppBar is a material design app bar that integrates with a CustomScrollView
            const SliverAppBar(
              // Setting whether the app bar can expand/contract as the user scrolls
              floating: false,
              // Determines whether the app bar is pinned to the top of the screen
              pinned: true,
              // Whether the app bar should become visible as soon as the user scrolls towards it
              snap: false,
              // The height of the app bar when it is fully expanded
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                // Title displayed in the app bar
                title: Text("SliverAppBar Example"),
                // Background of the app bar, usually an image
                background: FlutterLogo(),
              ),
            ),
            // SliverList is a sliver that displays multiple box children in a linear array
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    // Generating a list of tiles to demonstrate scrolling
                    title: Text('Item #$index'),
                  );
                },
                // Number of items in the list
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}