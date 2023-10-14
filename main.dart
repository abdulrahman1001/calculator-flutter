import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPressed = false;
  final myController = TextEditingController();
  String text = '';
  Parser parser = Parser();
  ContextModel contextModel = ContextModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aaaa'),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.sunny),
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
            );
          },
        ),
      ),
      body: Container(
        color: _isPressed ? Colors.white54 : Colors.deepPurple,
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.center,
                controller: myController,
                enabled: false,
                decoration: InputDecoration(
                  hintText: 'enter text here',
                  hintStyle: TextStyle(color: Colors.black45, fontSize: 33),
                  alignLabelWithHint: true,
                ),
                style: TextStyle(color: Colors.black, fontSize: 44),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String text = '1';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '2';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '3';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      String text = '*';
                      myController.text += text;
                    },
                    child: Text(
                      '*',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      String text = '00';
                      myController.text += text;
                    },
                    child: Text(
                      '00',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      String text = '4';
                      myController.text += text;
                    },
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '5';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '6';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '-';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = ',';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      ',',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String text = '7';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '8';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '9';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      String text = '/';
                      myController.text += text;
                    },
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '';
                      myController.text = text;
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String text = '0';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '.';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String expression = myController.text;
                      try {
                        Expression exp = parser.parse(expression);
                        double result = exp.evaluate(EvaluationType.REAL, contextModel);
                        myController.text = result.toString();
                      } catch (e) {
                        myController.text = 'Error';
                      }
                    },
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = '+';
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      myController.text += text;
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (myController.text == 'Error' || myController.text == 'Infinity') {
                        myController.text = '';
                      }
                      if (myController.text.isNotEmpty) {
                        myController.text = myController.text.substring(0, myController.text.length - 1);
                      }
                    },
                    child: Text(
                      'Del',
                      style: TextStyle(fontSize: 40),  // Set the font size here
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
