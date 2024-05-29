import 'package:android_intent_plus/android_intent.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../frequent_used_widget/moving_background.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  void _openLinkedin() async {
    Future<bool> isLinkedInInstalled() async {
      Uri url = Uri.parse('linkedin://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }
    String dt = 'https://www.linkedin.com/in/prashant-ranjan-singh-b9b6b9217/';
    bool isInstalled = await isLinkedInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(
          action: 'action_view',
          data: dt
      );
      await intent.launch();
    }
    else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
  void _openGithub() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }
    String dt = 'https://github.com/Prashant-ranjan-singh-123';
    // bool isInstalled = await DeviceApps.isAppInstalled('com.github.android');
    bool isInstalled = await isGithubInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(
          action: 'action_view',
          data: dt
      );
      await intent.launch();
    }
    else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
  void _openPlayStore() async {
    String dt = 'https://play.google.com/store/apps/details?id=com.instagram.android';
    bool isInstalled = true;
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(
          action: 'action_view',
          data: dt
      );
      await intent.launch();
    }
    else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
  
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.contain,
            child: const Text('Information',style:  TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              color: Colors.white,
            )).animate()
                .scale(duration: 400.ms, curve: Curves.decelerate),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),

          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 154, // Width + 2 * border width
                    height: 154, // Height + 2 * border width
                    decoration: BoxDecoration(
                      color: HexColor('#011f4b').withOpacity(0),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4), // Adjust opacity if needed
                          blurRadius: 30, // Increase blurRadius for a softer shadow
                          spreadRadius: 10, // Increase spreadRadius for a wider shadow
                          offset: const Offset(0, 10),
                        )
                      ],
                    ),
                    clipBehavior: Clip.antiAlias, // Ensure the border is rendered outside the circle
                    child: Container(
                      width: 154, // Width + 2 * border width
                      height: 154, // Height + 2 * border width
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4), // Adjust opacity if needed
                            blurRadius: 30, // Increase blurRadius for a softer shadow
                            spreadRadius: 10, // Increase spreadRadius for a wider shadow
                            offset: const Offset(0, 10),
                          )
                        ],
                        color: HexColor('#011f4b').withOpacity(0), // Change to the desired background color
                      ),
                      clipBehavior: Clip.antiAlias, // Ensure the border is rendered outside the circle
                      child: Image.asset(
                        'assets/images/logo_no_bg.png',
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate)
                      .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                ),
                const SizedBox(height: 20,),
                Center(
                  child: const AutoSizeText('Flutter Unwrapped',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                      color: Colors.white),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                ),
                Center(
                  child: const AutoSizeText('------Mastering the Art------',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.white),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                ),

                const SizedBox(height: 50,),
                Center(
                  child: Text(
                    "General Information",
                    style: TextStyle(
                        fontSize: 19,
                        height: 1.38,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        color: Theme.of(context).colorScheme.onPrimary
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                ),
                const SizedBox(height: 10,),
                WidgetCards(context, 10, 10, 0, 0, 'Owner Name', 'Prashant Ranjan Singh', null),
                // SizedBox(height: 0.5,),
                WidgetCards(context, 0, 0, 0, 0, 'Owner Country', 'India', Image.asset('assets/images/india_flag.jpg')),
                // SizedBox(height: 0.5,),
                // WidgetCardsFlag(context, 0, 0, 0, 0, ),
                // SizedBox(height: 0.5,),
                // WidgetCards(context, 0, 0, 0, 0, 'Gmail', 'prashant.singh.12312345@gmail.com'),
                // SizedBox(height: 0.5,),
                WidgetCards(context, 0, 0, 0, 0, 'Open Source', "No", null),
                // SizedBox(height: 0.5,),
                WidgetCards(context, 0, 0, 0, 0, 'Can we Copy Code', 'Yes', null),
                // SizedBox(height: 0.5,),
                WidgetCards(context, 0, 0, 10, 10, 'Beginners Friendly', 'Yes', null),
                // SizedBox(height: 30,),
                // SizedBox(height: 30,),
                // Add more WidgetCards as needed for other user data
                const SizedBox(height: 30,),

                Center(
                  child: Text(
                    "Support",
                    style: TextStyle(
                        fontSize: 19,
                        height: 1.38,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        color: Theme.of(context).colorScheme.onPrimary
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                ),
                const SizedBox(height: 8,),

                GestureDetector(
                    child: settingsCardWidget(context,title: 'Rate On Playstore',trailing: Image.asset('assets/images/playstore.png'),),
                    onTap: (){
                      _openPlayStore();
                    }
                ),
                settingsCardWidget(context,title: 'Share App', trailing: const Icon(Icons.share, color: Colors.white),),
                GestureDetector(
                  child: settingsCardWidget(
                    context,
                    title: 'Connect On Linkedin',
                    trailing: Image.asset('assets/images/linkedin.png'),
                  ),
                  onTap: (){
                    _openLinkedin();
                  },
                ),
                GestureDetector(child: settingsCardWidget(context,title: 'Connect On Github',trailing: Image.asset('assets/images/github.png', color: Colors.white,),),
                onTap: (){
                  _openGithub();
                },),
                const SizedBox(height: 30,)
              ],
            ),
          ),
        )
      ),
    );
  }

  Widget WidgetCards(BuildContext context, int topLeft, int topRight,
      int bottomLeft, int bottomRight, String firstItem, String secondItem, Widget? Trailing) {
    return Card(
      elevation: 5,
      color: HexColor('#03396c').withOpacity(0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        // height: 35,
        decoration: BoxDecoration(
          color: HexColor('#03396c').withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(topRight.toDouble()),
            topLeft: Radius.circular(topLeft.toDouble()),
            bottomRight: Radius.circular(bottomRight.toDouble()),
            bottomLeft: Radius.circular(bottomLeft.toDouble()),
          ),
          border: Border.all(color: HexColor('#03396c'), width: 2)
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  firstItem,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Oswald',
                    fontSize: 14,
                  ),
                ).animate()
                    .scale(duration: 400.ms, curve: Curves.decelerate),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Trailing!=null? SizedBox.square(
                  dimension: 24,
                  child: Trailing!,
                ).animate()
                    .scale(duration: 400.ms, curve: Curves.decelerate)
                    .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06)
                    :
                AutoSizeText(
                  secondItem,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: 'Oswald'
                  ),
                ).animate()
                    .scale(duration: 400.ms, curve: Curves.decelerate),
              ),
              // Add more child widgets as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget settingsCardWidget(BuildContext context,
      {Widget? leading,
        required String title,
        String? trailingText,
        Widget? trailing,
        BorderRadiusGeometry borderRadius = const BorderRadius.all(Radius.circular(10)),
        Color? backgroundColor,}) {
    return Card(
      elevation: 5,
      color: HexColor('#71839d').withOpacity(0.5),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: backgroundColor ?? HexColor('#01122a'),
              borderRadius: borderRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: leading ?? const SizedBox.shrink(),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w400,
                        ),
                      ).animate()
                          .scale(duration: 400.ms, curve: Curves.decelerate),
                    ],
                  ),
                ),
                if (trailingText != null)
                  Text(
                    trailingText,
                    style: const TextStyle(
                      color: Color(0xFF0F62FE),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                if (trailing != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox.square(
                      dimension: 24,
                      child: trailing!,
                    ).animate()
                        .scale(duration: 400.ms, curve: Curves.decelerate)
                        .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
