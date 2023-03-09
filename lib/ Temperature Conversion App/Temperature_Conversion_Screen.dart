import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemperatureConversion extends StatefulWidget {
  static final rout = '/TemperatureConversion';

  TemperatureConversion({super.key});

  @override
  State<TemperatureConversion> createState() => _TemperatureConversionState();
}

class _TemperatureConversionState extends State<TemperatureConversion> {
  double inTemp = 0.0, outTemp = 0.0;
  bool isFah = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ola"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                textDirection: TextDirection.rtl,
                style: const TextStyle(color: Colors.blue),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'أدخل درجة الحرارة',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: const TextStyle(
                      fontSize: 18,
                    ),
                    labelText: isFah
                        ? 'You entered $inTemp Fahrenheit'
                        : 'You entered $inTemp classicus'),
                onChanged: (value) {
                  try {
                    inTemp = double.parse(value);
                  } catch (e) {}
                },
              ),
              RadioListTile(
                  title: Text('Fahrenheit'),
                  value: true,
                  groupValue: isFah,
                  onChanged: (value2) {
                    setState(() {
                      isFah = true;
                    });
                  }),
              RadioListTile(
                  title: Text('classicus'),
                  value: false,
                  groupValue: isFah,
                  onChanged: (value2) {
                    setState(() {
                      isFah = value2!;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      outTemp = isFah
                          ? (inTemp - 32) * (5 / 6)
                          : (inTemp * 9 / 5) + 32;
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Text("data"),
                              content: isFah
                                  ? Text(
                                      "$inTemp Fahrenheit = $outTemp in classicus")
                                  : Text(
                                      "$inTemp classicus = $outTemp Fahrenheit")));
                    });
                  },
                  child: const Text(
                    'حول',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
