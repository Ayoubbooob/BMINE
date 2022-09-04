import 'package:bmi_calculator/components/custom_icon_content.dart';
import 'package:bmi_calculator/components/my_card.dart';
import 'package:bmi_calculator/components/reused_bottom_button.dart';
import 'package:bmi_calculator/components/reuser_floating_buuton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/models/person.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomButtonHeight = 80.0;
const bottomButtonColor = Color(0xFFEA1556);

enum Gender { female, male, none }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderValue = 180;
  int _weight = 60;
  int _age = 20;
  Gender genderSelected = Gender.male;
  int index = 1;
  // Person _person = Person(_currentSliderValue, _weight);

  updateCardSelectedIndex(Gender gender) {
    setState(() {
      genderSelected = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Person person = Person(_currentSliderValue, _weight);

    var size = MediaQuery.of(context).size;
    var screenHieght = size.height;
    return Container(
      color: const Color(0xFF090C22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    gender: Gender.male,
                    onTap: () {
                      updateCardSelectedIndex(Gender.male);
                    },
                    genderSelected: genderSelected,
                    // cardHeight: screenHieght / 4,
                    // opacity: 0.9,
                    cardChild: const CustomIconContent(
                        iconData: FontAwesomeIcons.mars, contentText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    gender: Gender.female,
                    onTap: () {
                      updateCardSelectedIndex(Gender.female);
                    },
                    genderSelected: genderSelected,
                    // cardHeight: screenHieght / 5, //screenHieght * 0.2,
                    cardChild: const CustomIconContent(
                        iconData: FontAwesomeIcons.venus,
                        contentText: 'FEMALE'),
                    // height: 150,
                    // width: 100
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              gender: Gender.none,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: -1,
                    child: Text(
                      'HEIGHT',
                      style:
                          kLabelTextStyle, //Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${_currentSliderValue.round()}',
                          style: kLargeBoldText,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ) //Theme.of(context).textTheme.headline3),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 13.0,
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 26.0,
                        ),
                        overlayColor: const Color(0x29EA1556),
                        thumbColor: const Color(0xFFEA1556),
                        activeTrackColor: kSliderActiveColor),
                    child: Slider(
                        value: _currentSliderValue,
                        min: 50,
                        max: 250,
                        onChanged: (double newRating) {
                          setState(() {
                            _currentSliderValue = newRating;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    gender: Gender.none,
                    // cardHeight: screenHieght /3, //180, //screenHieght, //_screenHieght / 2,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: -1,
                          child: Text(
                            'WEIGHT',
                            style:
                                kLabelTextStyle, //Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$_weight',
                            style:
                                kLargeBoldText, //Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReusedFloatingButton(
                                heroTag: 'btn1',
                                iconData: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (_weight > 0) {
                                      _weight--;
                                    }
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReusedFloatingButton(
                                heroTag: 'btn2',
                                iconData: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    _weight++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // height: 150,
                    // width: 100
                  ),
                ),
                Expanded(
                  child: MyCard(
                    gender: Gender.none,
                    // cardHeight: screenHieght / 3, //180, //_screenHieght / 2,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: -1,
                          child: Text(
                            'AGE',
                            style:
                                kLabelTextStyle, //Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$_age',
                            style:
                                kLargeBoldText, //Theme.of(context).textTheme.headline3
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReusedFloatingButton(
                                heroTag: 'btn3',
                                iconData: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (_age > 0) {
                                      _age--;
                                    }
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReusedFloatingButton(
                                heroTag: 'btn4',
                                iconData: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    _age++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReusedBottomButton(
            onTap: () {
              int personHeight = getHeight();
              int personWeight = getWeight();
              Person person =
                  Person(height: personHeight, weight: personWeight);
              String bmi = person.calculBMI();
              person.resultMsg();
              String resultMsg = person.getMsg();
              String level = person.getLevel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ResultPage(bmi: bmi, resultMsg: resultMsg, level: level),
                ),
              );
              // Navigator.pushNamed(context, '/result', arguments: person);
            },
            buttonText: 'CALCULATE YOUR BMI',
            screenHieght: screenHieght,
          )
        ],
      ),
    );
  }

  int getHeight() {
    return _currentSliderValue.toInt();
  }

  int getWeight() {
    return _weight;
  }
}
