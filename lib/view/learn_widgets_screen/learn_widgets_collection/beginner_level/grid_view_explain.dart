import 'package:flutter/material.dart';

import '../../../../frequent_used_widget/custom_phone_layout.dart';

/// A simple stateless widget that demonstrates the use of [GridView] in Flutter,
/// displaying a grid of [Card] widgets with different colors.
class GridViewExplain extends StatelessWidget {
  /// Creates a [GridViewExplain] widget.
  const GridViewExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPhoneLayout(
      child: Scaffold(
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
      
        appBar: AppBar(
          title: const Text('Gridview Example'),
          centerTitle: true,
        ),
      
        /// The body of the Scaffold is a [GridView] that contains multiple [Card] widgets.
        body: GridView(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Specifies the number of columns in the grid.
            crossAxisCount: 3,
            // Sets the spacing between the columns.
            crossAxisSpacing: 10.0,
            // Sets the spacing between the rows.
            mainAxisSpacing: 10,
          ),
          children: const [
            // Displaying cards with different colors and content.
            Card(
              color: Colors.orange,
              child: Center(
                child: Text('1',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.orangeAccent,
              child: Center(
                child: Text('2',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.brown,
              child: Center(
                child: Text('3',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.red,
              child: Center(
                child: Text('4',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.deepOrange,
              child: Center(
                child: Text('5',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.greenAccent,
              child: Center(
                child: Text('6',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.green,
              child: Center(
                child: Text('7',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.lightGreenAccent,
              child: Center(
                child: Text('8',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.deepPurple,
              child: Center(
                child: Text('9',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.tealAccent,
              child: Center(
                child: Text('10',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: Center(
                child: Text('11',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.pink,
              child: Center(
                child: Text('12',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.cyan,
              child: Center(
                child: Text('13',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.lime,
              child: Center(
                child: Text('14',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.indigo,
              child: Center(
                child: Text('15',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.yellow,
              child: Center(
                child: Text('16',
                    style: TextStyle(color: Colors.black, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.deepPurple,
              child: Center(
                child: Text('17',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.tealAccent,
              child: Center(
                child: Text('18',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.blueGrey,
              child: Center(
                child: Text('19',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Center(
                child: Text('17',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.amber,
              child: Center(
                child: Text('20',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.purple,
              child: Center(
                child: Text('21',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text('22',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
