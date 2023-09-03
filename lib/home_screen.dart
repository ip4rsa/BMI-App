import 'package:bmicalculator/widgets/green_left_shape.dart';
import 'package:bmicalculator/widgets/red_right_shape.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final vaznController = TextEditingController();
  final ghadController = TextEditingController();
  double goodShapeBMI = 100;
  double badShapeBMI = 100;
  var textBMIcolor;
  var badColor = Colors.red;
  var goodColor = Colors.green;
  var lowCoror = Color.fromARGB(255, 187, 159, 0);

  double resultBMI = 0;
  String resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('! بدنت رو محاسبه کن BMI',
            style: TextStyle(color: Color.fromARGB(255, 35, 35, 35))),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  child: TextField(
                    controller: vaznController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Color.fromARGB(255, 224, 66, 3),
                      fontSize: 32,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 224, 66, 3).withOpacity(.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: TextField(
                    controller: ghadController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Color.fromARGB(255, 224, 66, 3),
                      fontSize: 32,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد به متر',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 224, 66, 3).withOpacity(.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                final vazn = double.parse(vaznController.text);
                final ghad = double.parse(ghadController.text);
                setState(
                  () {
                    resultBMI = vazn / (ghad * ghad);
                    if (resultBMI > 25) {
                      badShapeBMI = 270;
                      goodShapeBMI = 50;
                      textBMIcolor = badColor;
                      resultText = 'اضافه وزن نداری شیدا (الکی)';
                    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                      goodShapeBMI = 270;
                      badShapeBMI = 50;
                      textBMIcolor = goodColor;
                      resultText = 'ایحان! وزنت نرماله';
                    } else {
                      badShapeBMI = 70;
                      goodShapeBMI = 70;
                      textBMIcolor = lowCoror;
                      resultText = 'کمبود وزن داری. گوشت بخور';
                    }
                  },
                );
              },
              child: Text(
                'محاسبه کن',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 35),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 61),
            ),
            Text(
              '$resultText',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: textBMIcolor),
            ),
            SizedBox(height: 80),
            RedRight(badShapeBMI),
            SizedBox(height: 35),
            GreenLeft(goodShapeBMI),
          ],
        ),
      ),
    );
  }
}
