import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterunwrapped/view/splash_and_on_boarding_screen/splash_screen.dart';
import 'package:get/get.dart';

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

// Future<void> _loadShader() async {
//   return FragmentProgram.fromAsset('assets/shaders/shader.frag').then(
//           (FragmentProgram prgm) {
//         EverythingView.shader = prgm.fragmentShader();
//       }, onError: (Object error, StackTrace stackTrace) {
//     FlutterError.reportError(
//         FlutterErrorDetails(exception: error, stack: stackTrace));
//   });
// }


class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: Test(),
      // theme: ThemeData(
      //     textTheme: const TextTheme(
      //       displayLarge: TextStyle(
      //           fontFamily: 'Poppins',fontSize: 20.0, fontWeight: FontWeight.w600),
      //     )
      // ),
    );
  }
}
