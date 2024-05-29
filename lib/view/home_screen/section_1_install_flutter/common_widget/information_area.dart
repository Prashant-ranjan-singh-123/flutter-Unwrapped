import 'package:android_intent_plus/android_intent.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationBox{
  Widget SubHeading({
    required double topPadding,
    required double bottomPadding,
    required String SubHeading
  }){
    return Column(
      children: [
        SizedBox(height: topPadding,width: double.infinity,),
        SizedBox(
        width: double.infinity,
          child: Text(
            SubHeading,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        SizedBox(height: bottomPadding,),
      ],
    );
  }

  Widget CardTextAndImage({
    required String stepNum,
    required String Content,
    required String PathOfImage
  }){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: HexColor('#03396c').withOpacity(0),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Step $stepNum: ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: Content,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 40,),
                  Container(
                    width: 334,
                    height: 205,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PathOfImage),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate)
                      .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  Widget CardTextAndImageDis({
    required String stepNum,
    required String Content,
    required String dis,
    required String PathOfImage
  }){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: HexColor('#03396c').withOpacity(0),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Step $stepNum: ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: Content,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 40,),
                  Container(
                    width: 334,
                    height: 205,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PathOfImage),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate)
                      .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                  const SizedBox(height: 10,),
                  Text(
                    dis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                      height: 0,
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  Widget CardText({
    required String stepNum,
    required String Content,
  }){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: HexColor('#03396c').withOpacity(0),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Step $stepNum: ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: Content,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ).animate()
                  .scale(duration: 400.ms, curve: Curves.decelerate),
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        SizedBox(height: 10,),
      ],
    );
  }

  Widget CardTextWithCommand({
    required String stepNum,
    required String Content,
    required String Command,
  }){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: HexColor('#03396c').withOpacity(0),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Step $stepNum: ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: Content,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 10,),
                  _clipBoardCopyCommand(text: Command),
                ],
              ),
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  Widget CardTextWithCommandWithoutStep({
    required String Heading,
    required String Content,
    required String Command,
  }){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: HexColor('#03396c').withOpacity(0),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    maxLines: 1,
                    Heading,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 5,),
                  AutoSizeText(
                    Content,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                  const SizedBox(height: 20,),
                  _clipBoardCopyCommand(text: Command),
                ],
              ),
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  Widget _clipBoardCopyCommand({
    required String text
}) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: HexColor('#2F2F2F'),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: const Text('Command',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    color: Colors.white,
                    )
                  ).animate()
                      .scale(duration: 400.ms, curve: Curves.decelerate),
                ),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: text));
                    // Get.snackbar('Item Coppied', '${text} Copied');
                  },
                  icon: const Icon(Icons.content_copy, color: Colors.white,),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextSelectionTheme(
              data: TextSelectionThemeData(
                selectionColor: HexColor('#0337A1').withOpacity(0.9),
                selectionHandleColor: HexColor('#0337A1').withOpacity(0.9),
              ),
              child: SelectableText(
                cursorColor: Colors.white,
                minLines: 1,
                text,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ),
        )
      ],
    ).animate()
        .scale(duration: 400.ms, curve: Curves.decelerate)
        .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06);
  }

  Widget youtube({required String link}){
    Future<void> openYoutube() async {
        Future<bool> isLinkedInInstalled() async {
          Uri url = Uri.parse('youtube://');
          if (await canLaunchUrl(url)) {
            return true;
          } else {
            return false;
          }
        }
        String dt = link;
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

    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.7/1,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    boxShadow: [
                      BoxShadow(
                          color: HexColor('#6497b1'),
                          blurStyle: BlurStyle.solid,
                          blurRadius: 20,
                          spreadRadius: 0
                      )
                    ],
                    borderRadius: BorderRadius.circular(18.0),
                    color: HexColor('#FE0000').withOpacity(1),
                    // color: Colors.transparent,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        openYoutube();
                      },
                      splashColor: Colors.red.withOpacity(0.5),
                      highlightColor: HexColor('#FBCCCC').withOpacity(0.5),
                      hoverColor: HexColor('#054380'),
                      focusColor: HexColor('#054380'),

                      hoverDuration: const Duration(milliseconds: 450),
                      borderRadius: BorderRadius.circular(15.0),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 1,
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Icon(MdiIcons.play, size: 70, color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}