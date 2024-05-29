import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../frequent_used_widget/moving_background.dart';
import '../../../../../viewmodel/interview_question/QuestionAnswer.dart';

class DifficultyScreen extends StatefulWidget {
  int screenNum=0;
  DifficultyScreen({super.key, required this.screenNum});

  @override
  State<DifficultyScreen> createState() => _DifficultyScreenState();
}

class _DifficultyScreenState extends State<DifficultyScreen> {
  @override
  Widget build(BuildContext context) {
    String title;
    Widget wid=Text('Nothing Selected data', style: TextStyle(color: Colors.white),);
    switch (widget.screenNum) {
      case 0:
        title = 'Easy Question';
        wid=level_one();
        break;
      case 1:
        title = 'Intermediate Question';
        wid=level_two();
        break;
      case 2:
        title = 'Advanced Question';
        wid=level_three();
        break;
      case 3:
        title = 'Challenge Question';
        wid=level_four();
        break;
      case 4:
        title = 'Additional Question';
        wid=level_five();
        break;
      default:
        title = 'Hard Question';
        wid=level_one();
    }
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
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
  Widget level_one(){
    return ListView.builder(
        itemCount: QuestionAnswer().flutterInterviewQuestionsEasy.length,
        itemBuilder: (context, index) {
          String _question = QuestionAnswer().flutterInterviewQuestionsEasy['${index+1}']['Question'];
          String _answer = QuestionAnswer().flutterInterviewQuestionsEasy['${index+1}']['Answer'];
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
  Widget level_two(){
    return ListView.builder(
        itemCount: QuestionAnswer().flutterInterviewQuestionsIntermediate.length,
        itemBuilder: (context, index) {
          int current_index=int.parse(QuestionAnswer().flutterInterviewQuestionsIntermediate.keys.first)+index;
          String _question = QuestionAnswer().flutterInterviewQuestionsIntermediate['${current_index}']['Question'];
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
                      backgroundColor: HexColor('#051B32').withOpacity(0.5),
                      collapsedBackgroundColor: HexColor('#051B32'),
                      children: [
                        Container(
                          color: HexColor('#ACCBE0'),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Text(
                                "The horned sungem (Heliactin bilophus) is a species of hummingbird native to Brazil, Bolivia and Suriname. It prefers open habitats such as savanna, grassland and garden, and expanded its range into southern Amazonas and Espírito Santo, probably due to deforestation. It is a small hummingbird with a long tail and a short, black bill. The sexes differ in appearance, with males having two shiny red, golden, and green feather \"horns\" above the eyes, a shiny blue head crest and a black throat with a pointed \"beard\". The female is plainer, with a brown or yellow–buff throat. It is a nomadic species, responding to the seasonal flowering of its food plants. If a flower's shape is unsuited to the bird's short bill, it may rob nectar through a hole at its base. It also eats small insects. Only the female builds the small cup nest, incubates the two white eggs, and rears the chicks. The species is currently classified as least concern, and its population is thought to be increasing. (Full article...)"
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
  Widget level_three(){
    return ListView.builder(
        itemCount: QuestionAnswer().flutterInterviewQuestionsAdvance.length,
        itemBuilder: (context, index) {
          int current_index=int.parse(QuestionAnswer().flutterInterviewQuestionsAdvance.keys.first)+index;
          String _question = QuestionAnswer().flutterInterviewQuestionsAdvance['${current_index}']['Question'];
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
                      backgroundColor: HexColor('#051B32').withOpacity(0.5),
                      collapsedBackgroundColor: HexColor('#051B32'),
                      children: [
                        Container(
                          color: HexColor('#ACCBE0'),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Text(
                                "The horned sungem (Heliactin bilophus) is a species of hummingbird native to Brazil, Bolivia and Suriname. It prefers open habitats such as savanna, grassland and garden, and expanded its range into southern Amazonas and Espírito Santo, probably due to deforestation. It is a small hummingbird with a long tail and a short, black bill. The sexes differ in appearance, with males having two shiny red, golden, and green feather \"horns\" above the eyes, a shiny blue head crest and a black throat with a pointed \"beard\". The female is plainer, with a brown or yellow–buff throat. It is a nomadic species, responding to the seasonal flowering of its food plants. If a flower's shape is unsuited to the bird's short bill, it may rob nectar through a hole at its base. It also eats small insects. Only the female builds the small cup nest, incubates the two white eggs, and rears the chicks. The species is currently classified as least concern, and its population is thought to be increasing. (Full article...)"
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
  Widget level_four(){
    return ListView.builder(
        itemCount: QuestionAnswer().flutterInterviewQuestionsChallenge.length,
        itemBuilder: (context, index) {
          int current_index=int.parse(QuestionAnswer().flutterInterviewQuestionsChallenge.keys.first)+index;
          String _question = QuestionAnswer().flutterInterviewQuestionsChallenge['${current_index}']['Question'];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Opacity(
                  opacity: 0.8,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: ExpansionTile(
                      title: Text('${index+1}) $_question', style: const TextStyle(color: Colors.white),),
                      backgroundColor: HexColor('#051B32').withOpacity(0.5),
                      collapsedBackgroundColor: HexColor('#051B32'),
                      children: [
                        Container(
                          color: HexColor('#ACCBE0'),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Text(
                                "The horned sungem (Heliactin bilophus) is a species of hummingbird native to Brazil, Bolivia and Suriname. It prefers open habitats such as savanna, grassland and garden, and expanded its range into southern Amazonas and Espírito Santo, probably due to deforestation. It is a small hummingbird with a long tail and a short, black bill. The sexes differ in appearance, with males having two shiny red, golden, and green feather \"horns\" above the eyes, a shiny blue head crest and a black throat with a pointed \"beard\". The female is plainer, with a brown or yellow–buff throat. It is a nomadic species, responding to the seasonal flowering of its food plants. If a flower's shape is unsuited to the bird's short bill, it may rob nectar through a hole at its base. It also eats small insects. Only the female builds the small cup nest, incubates the two white eggs, and rears the chicks. The species is currently classified as least concern, and its population is thought to be increasing. (Full article...)"
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
  Widget level_five(){
    return ListView.builder(
        itemCount: QuestionAnswer().flutterInterviewQuestionsAdditional.length,
        itemBuilder: (context, index) {
          int current_index=int.parse(QuestionAnswer().flutterInterviewQuestionsAdditional.keys.first)+index;
          String _question = QuestionAnswer().flutterInterviewQuestionsAdditional['${current_index}']['Question'];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Opacity(
                  opacity: 0.8,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: ExpansionTile(
                      title: Text('${index+1}) $_question', style: const TextStyle(color: Colors.white),),
                      backgroundColor: HexColor('#051B32').withOpacity(0.5),
                      collapsedBackgroundColor: HexColor('#051B32'),
                      children: [
                        Container(
                          color: HexColor('#ACCBE0'),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Text(
                                "The horned sungem (Heliactin bilophus) is a species of hummingbird native to Brazil, Bolivia and Suriname. It prefers open habitats such as savanna, grassland and garden, and expanded its range into southern Amazonas and Espírito Santo, probably due to deforestation. It is a small hummingbird with a long tail and a short, black bill. The sexes differ in appearance, with males having two shiny red, golden, and green feather \"horns\" above the eyes, a shiny blue head crest and a black throat with a pointed \"beard\". The female is plainer, with a brown or yellow–buff throat. It is a nomadic species, responding to the seasonal flowering of its food plants. If a flower's shape is unsuited to the bird's short bill, it may rob nectar through a hole at its base. It also eats small insects. Only the female builds the small cup nest, incubates the two white eggs, and rears the chicks. The species is currently classified as least concern, and its population is thought to be increasing. (Full article...)"
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
