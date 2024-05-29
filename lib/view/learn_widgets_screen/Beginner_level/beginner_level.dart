import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../frequent_used_widget/moving_background.dart';
import '../../../frequent_used_widget/widget_name_container.dart';
import '../../../viewmodel/learn_widget_screen/beginner_list_redirection.dart';

class BeginnerLevelWidget extends StatefulWidget {
  const BeginnerLevelWidget({super.key});

  @override
  State<BeginnerLevelWidget> createState() => _BeginnerLevelWidgetState();
}

class _BeginnerLevelWidgetState extends State<BeginnerLevelWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: const FittedBox(
            fit: BoxFit.contain,
            child: Text('Widget (Beginner)',style:  TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: Colors.white,
            )),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // Two items per row
                    childAspectRatio: 4/1,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                  ),
                  itemCount: WidgetCollection().name_of_simple_widget.length,
                  itemBuilder: (context, index){
                  return WidgetNameContainer().WidgetContainer(name: WidgetCollection().name_of_simple_widget[index], fun: WidgetCollection().Screens_of_simple_widget[index]);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
