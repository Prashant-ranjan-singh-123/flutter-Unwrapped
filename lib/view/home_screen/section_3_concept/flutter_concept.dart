import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../frequent_used_widget/moving_background.dart';

class FlutterConcept extends StatelessWidget {
  const FlutterConcept({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.contain,
            child: const AutoSizeText('Flutter Concept',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                )).animate().scale(duration: 400.ms, curve: Curves.decelerate),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                const Card(
                  color: Colors.transparent,
                  elevation: 15,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        AutoSizeText(
                          'Flutter: A Cross-Platform App Development Framework',
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Flutter is an open-source, user interface (UI) software development framework created by Google. It’s designed to help developers build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2017 and has gained significant popularity in the world of app development due to its unique features and capabilities.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: AutoSizeText(
                    maxLines: 1,
                    'Key Features and Concepts:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 5,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '1) Dart Programming Language',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Flutter is built using the Dart programming language, which is known for its performance and productivity benefits. Dart is strongly typed, but it also supports just-in-time (JIT) and ahead-of-time (AOT) compilation, making it suitable for both development and production.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '2) Widgets',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Widgets are the core building blocks of Flutter applications. They are reusable UI elements that can represent anything from a button to an entire screen. Widgets can be categorized into two main types: StatelessWidget and StatefulWidget.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3) Hot Reload',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flutter’s hot reload feature helps you quickly and easily experiment, build UIs, add features, and fix bugs. Hot reload works by injecting updated source code files into the running Dart Virtual Machine (VM). After the VM updates classes with the new versions of fields and functions, the Flutter framework automatically rebuilds the widget tree, allowing you to quickly view the effects of your changes.\n\nFlutter’s hot reload feature is a game-changer for developers. It allows you to make code changes and immediately see the results in your app without restarting it. This rapid iteration greatly speeds up the development process, making it easier to experiment and refine your app’s UI and functionality.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '4) Material Design and Cupertino',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flutter provides widgets that closely mimic the design patterns of Android (Material Design) and iOS (Cupertino) platforms. This means you can create a visually consistent user experience across both Android and iOS while still allowing for platform-specific customizations.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '5) Layouts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flutter offers a variety of layout widgets for arranging UI elements.\n\n1) Row and Column: Allow you to arrange widgets horizontally or vertically.\n\n2) Stack: Lets you overlay widgets on top of each other.\n\n3) Flex: Allows for flexible layouts using a flexbox model. \n\n4) Container: Is a versatile widget that can be used for padding, margins, and background decoration.\n\nOther are there visit Official Documentation.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '6) Packages and Plugins',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'General packages written in Dart, for example, the path package. Some of these might contain Flutter-specific functionality and thus have a dependency on the Flutter framework, restricting their use to Flutter only, for example, the fluro package. Plugin packages a specialized Dart package that contains an API written in Dart code combined with one or more platform-specific implementations. \n\nPlugin packages can be written for Android (using Kotlin or Java), iOS (using Swift or Objective-C), web, macOS, Windows, Linux, or any combination thereof.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '7) Flutter Doctor',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'The flutter doctor command is a diagnostic tool that checks your development environment for potential issues and provides guidance on how to resolve them. It ensures that you have the necessary dependencies and configuration set up correctly to develop Flutter apps.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Card(
                    color: Colors.transparent,
                    elevation: 15,
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                maxLines: 1,
                                '8) Community and Documentation',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flutter has a strong and active developer community. You can find resources like tutorials, forums, and GitHub repositories where developers share their knowledge and collaborate on open-source projects. The official Flutter documentation is comprehensive and regularly updated, making it a valuable resource for learning and troubleshooting.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ]))).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'That\'s it! You’ve successfully Learned basic Flutter. You’re now ready to start developing cross-platform applications using Flutter and Dart.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w200,
                    height: 0,
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
