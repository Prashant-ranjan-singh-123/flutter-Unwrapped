import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../viewmodel/interview_question/QuestionAnswer.dart';
import '../../../../frequent_used_widget/moving_background.dart';

class DartInterviewAskScreen extends StatefulWidget {
  DartInterviewAskScreen({super.key});

  @override
  State<DartInterviewAskScreen> createState() => _DartInterviewAskScreenState();
}

class _DartInterviewAskScreenState extends State<DartInterviewAskScreen> {
  @override
  Widget build(BuildContext context) {
    String title;
    Widget wid= interview_body();
    
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const AutoSizeText(
            'Dart Interview',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ).animate()
              .scale(duration: 400.ms, curve: Curves.decelerate),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: wid,
      ),
    );
  }
  Widget interview_body(){
    return ListView.builder(
        itemCount: QuestionAnswer().dartQuestion.length,
        itemBuilder: (context, index) {
          String _question = QuestionAnswer().dartQuestion['${index+1}']['Question'];
          String _answer = QuestionAnswer().dartQuestion['${index+1}']['Answer'];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Opacity(
                  opacity: 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: ExpansionTile(
                      title: Text('${index+1}) $_question', style: TextStyle(color: Colors.white),),
                      backgroundColor: HexColor('#051B32'),
                      collapsedBackgroundColor: HexColor('#051B32'),
                      maintainState: true,
                      children: [
                        Container(
                          color: HexColor('#ACCBE0'),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Text(
                                _answer
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          );
        });
  }
}
