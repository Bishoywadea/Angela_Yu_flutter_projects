import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Card.dart';
import 'Container.dart';
import 'Constants.dart';
import 'input_page.dart';

// class ResultPage extends StatefulWidget {
//   ResultPage({required this.result, required this.resultText});
//   final String result;
//   final String resultText;
//
//   @override
//   _ResultPageState createState() => _ResultPageState();
// }
//
// class _ResultPageState extends State<ResultPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('BMI CALCULATOR'),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(15.0),
//               alignment: Alignment.bottomLeft,
//               child: Text(
//                 'Your Results',
//                 style: TextStyle(
//                   fontSize: 35.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 5,
//             child: MyContainer(
//               containerChild: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'data',
//                     style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 23.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     '22',
//                     style: numbersFontFormat.copyWith(fontSize: 100.0),
//                   ),
//                   Text(
//                     'skinny bitch',
//                     style: TextStyle(
//                       fontSize: 22.0,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Navigator.pushNamed(context, '/');
//                       });
//                     },
//                     child: Container(
//                       child: Center(
//                         child: Text(
//                           'Test Again',
//                           style: numbersFontFormat.copyWith(
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       color: selectedGender == Gender.none
//                           ? Colors.grey
//                           : selectedGender == Gender.male
//                               ? Colors.blueAccent
//                               : Colors.pink,
//                       width: double.infinity,
//                       height: BottomButtonHeight,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class ResultPage extends StatelessWidget {
  ResultPage({required this.result, required this.resultText});

  final String result;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Result',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    result,
                    style: numbersFontFormat.copyWith(fontSize: 100.0),
                  ),
                  Text(
                    resultText,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Test Again',
                          style: numbersFontFormat.copyWith(
                              fontWeight: FontWeight.bold),
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
            ),
          )
        ],
      ),
    );
  }
}
