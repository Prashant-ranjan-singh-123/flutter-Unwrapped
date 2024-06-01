import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterunwrapped/view/splash_and_on_boarding_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

Shader? shaderProgram;

void main() async {
  await _loadShader();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: const Color.fromRGBO(12,5,77,1).withOpacity(0),
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const StartApp());
  // runApp(const Test());
}

Future<void> _loadShader() async {
  try {
    final prgm = await FragmentProgram.fromAsset('assets/shaders/shader.frag');
    // Here you need to use the shader program according to your requirement
    shaderProgram = prgm.fragmentShader();
  } catch (error, stackTrace) {
    FlutterError.reportError(FlutterErrorDetails(exception: error, stack: stackTrace));
  }
}


class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF011f4b), // Seed color
          brightness: Brightness.dark,
          background: HexColor("#011f4b").withOpacity(0.4)
        ),
        useMaterial3: true, // Enable Material 3
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF011f4b),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
