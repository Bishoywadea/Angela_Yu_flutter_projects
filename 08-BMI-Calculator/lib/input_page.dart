import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Card.dart';
import 'Container.dart';
import 'Constants.dart';
import 'calculator.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender = Gender.none;
int height = 120;
double weight = 60;
double age = 20;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    shape: FontAwesomeIcons.person,
                    type: "Male",
                    coulor: selectedGender == Gender.male
                        ? selectedIconColor
                        : unSelectedIconColor,
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    shape: FontAwesomeIcons.personDress,
                    type: "Female",
                    coulor: selectedGender == Gender.female
                        ? selectedIconColor
                        : unSelectedIconColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Colors.white, fontSize: 23.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height', style: numbersFontFormat),
                      Text(
                        'cm',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Slider(
                    activeColor: selectedGender == Gender.none
                        ? Colors.grey
                        : selectedGender == Gender.male
                            ? Colors.blueAccent
                            : Colors.pink,
                    value: height.toDouble(),
                    min: 100.0,
                    max: 250.0,
                    label: height.toString(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('$weight', style: numbersFontFormat),
                            Text(
                              'kg',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: selectedGender == Gender.none
                                  ? Colors.grey
                                  : selectedGender == Gender.male
                                      ? Colors.blueAccent
                                      : Colors.pink,
                              onPressed: () {
                                setState(
                                  () {
                                    weight -= 1;
                                  },
                                );
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: selectedGender == Gender.none
                                  ? Colors.grey
                                  : selectedGender == Gender.male
                                      ? Colors.blueAccent
                                      : Colors.pink,
                              onPressed: () {
                                setState(
                                  () {
                                    weight += 1;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('$age', style: numbersFontFormat),
                            Text(
                              'Yr',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: selectedGender == Gender.none
                                  ? Colors.grey
                                  : selectedGender == Gender.male
                                      ? Colors.blueAccent
                                      : Colors.pink,
                              onPressed: () {
                                setState(
                                  () {
                                    age -= 1;
                                  },
                                );
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: selectedGender == Gender.none
                                  ? Colors.grey
                                  : selectedGender == Gender.male
                                      ? Colors.blueAccent
                                      : Colors.pink,
                              onPressed: () {
                                setState(
                                  () {
                                    age += 1;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Brain b = Brain(h: height, w: weight);
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      result: b.BMI(),
                      resultText: b.result(),
                    ),
                  ),
                );
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style:
                      numbersFontFormat.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              color: selectedGender == Gender.none
                  ? Colors.grey
                  : selectedGender == Gender.male
                      ? Colors.blueAccent
                      : Colors.pink,
              width: double.infinity,
              height: BottomButtonHeight,
            ),
          ),
        ],
      ),
    );
  }
}
