import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home5 extends StatefulWidget {
  const Home5({Key? key}) : super(key: key);
  static final rout = '/Home5';

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var myFoucs;
  String text = ''; // Way One
  final myControllar = TextEditingController(); // Way Tow Step 1
  bool sw = false;
  Color? selectedRaido ;
  // To make force to next text filed when click on next btn
  @override
  void initState() {
    super.initState();
    myFoucs = FocusNode();
    myControllar.addListener(getLatest); // Way Tow Step 4
  }

  // When widget is kill remove focus
  @override
  void dispose() {
    super.dispose();
    myFoucs.dispose();
  }

  // Way Tow Step 3
  getLatest() {
    setState(() {
      text = myControllar.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: sw ? Colors.black : null, // change color by switch
      // backgroundColor: selectedRaido, // change color by radio
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Input Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text("You typed \n $text", style: Theme.of(context).textTheme.headline6), // way One
              TextFormField(autofocus: true, decoration: const InputDecoration(hintText: ("FirstName")),
                // onChanged: (value) { // This is the first way using onChange Method
                //   setState(() {
                //     text = value;
                //   });
                // },
                controller: myControllar,
                // Way tow Step 2
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is equired';
                  }
                  return null;
                },
              ),
              TextFormField(
                focusNode: myFoucs,
                decoration: const InputDecoration(
                  hintText: ("LastName"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is equired';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () => {
                        if (formKey.currentState!.validate())
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Username")))
                          }
                      },
                  child: const Text("Hi")),
              Switch(value: sw, onChanged: (newValue) {
                setState(() {
                  sw = newValue;
                });
              }),
              const Text("Green"),
              Radio(value: Colors.green, groupValue: selectedRaido, onChanged: (newValue2){
                setState(() {
                  selectedRaido = newValue2!;
                });

              }),
              const Text("red"),
              Radio(value: Colors.red, groupValue: selectedRaido, onChanged: (newValue2){
                setState(() {
                  selectedRaido = newValue2!;
                });
              }),
              RadioListTile(value: Colors.cyan,title: const Text('Color'), groupValue: selectedRaido, onChanged: (newValue2){
                setState(() {
                  selectedRaido = newValue2!;
                });
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Next'),
        onPressed: () => myFoucs.requestFocus(),
      ),
    );
  }
}
