import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TempV2 extends StatefulWidget {
  const TempV2({Key? key}) : super(key: key);
  static const rout = 'TempV2';

  @override
  State<TempV2> createState() => _TempV2State();
}

class _TempV2State extends State<TempV2> {
  double tempFah = 0, tempCel = 0;
  bool isFah = true;
  var fahController = TextEditingController();
  var celController = TextEditingController();

  initState() {
    super.initState();
    celController.addListener(celListner);
    // fahController.addListener(fahListner);
  }

  fahListner() {
    setState(() {
      tempFah = double.parse(fahController.text); // get any number is write on fah InputBox and convert to double
      tempCel = convert(tempFah, true); // convert the fah to cel using covert function
      if (isFah) {
        celController.text = tempCel.toString(); // take the cel degree and convert it to text and view in cel textField
        isFah = false;
      }
    });
  }

  celListner() {
    // setState(() {
    tempCel = double.parse(celController.text);
    tempFah = convert(tempCel, false);
    if (!isFah) {
      fahController.text = tempFah.toString();
      isFah = true;
    }
    // });
  }

  double convert(double temp, bool isF) {
    return isF ? (temp - 32) * (5 / 9) : (temp * 9 / 5) + 32;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Version Tow'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Celsius',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextField(
                    controller: celController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      suffixText: 'C',
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Expanded(
                child: Column(
              children: [
                const Text(
                  'Fahrenheit',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextField(
                  controller: fahController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    suffixText: 'F',
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
