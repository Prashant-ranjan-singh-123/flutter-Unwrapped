import 'package:flutter/material.dart';
import '../../../../frequent_used_widget/custom_phone_layout.dart';

/// A widget that demonstrates different types of Card widgets in Flutter.
class CardExamples extends StatelessWidget {
  const CardExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Card Examples'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// Card with a simple child widget.
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('This is a card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with a background color.
                const Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Colored Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with increased elevation.
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/logo_no_bg.png'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with rounded corners.
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Rounded Corners Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with margin.
                const Card(
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Margin Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with borderOnForeground property.
                Card(
                  borderOnForeground: false,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://source.unsplash.com/random/?paint&1',
                      scale: 1.0,
                      height: 300,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with clip behavior set to antiAlias.
                const Card(
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Anti-aliased Clip Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with semantic container set to true.
                const Card(
                  semanticContainer: true,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Semantic Container Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with shadow color.
                const Card(
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Shadow Color Card'),
                  ),
                ),
                const SizedBox(height: 10),

                /// Card with custom border radius.
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Custom Border Radius Card'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}