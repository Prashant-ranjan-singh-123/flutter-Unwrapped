import 'package:flutter/material.dart';

class TextExplain extends StatelessWidget {
  const TextExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Text Example'),
            centerTitle: true,
          ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Simple text Widget
                const Text('Text Displayed'),

                // Simple text Widget style
                const Text('Bricks are building block of house',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),
                ),

                // Shadow Text
                const Text('Example of shadow text',
                  style: TextStyle(
                      fontSize: 20.0,
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.amber,
                          offset: Offset(2, 4),
                        )
                      ]
                  ),
                ),

                //Text.rich Text widget can display a paregraph with differently style
                // It's similar to Rich Text
                const Text.rich(
                  TextSpan(
                      text: ' Hi everyone',
                      children: [
                        TextSpan(
                            text: 'Italic',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            )
                        ),
                        TextSpan(
                            text: 'Its',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            )
                        ),
                        TextSpan(
                            text: 'flutter guide',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            )
                        )
                      ]
                  ),

                ),

                //Rich Text Which gives you more control over the text style
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        text: 'It',
                        style: DefaultTextStyle.of(context).style,
                        children: const [
                          TextSpan(
                            text: 'best app to',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 22.0,
                            ),
                          ),
                          TextSpan(
                            text: 'understand flutter',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]
                    )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}