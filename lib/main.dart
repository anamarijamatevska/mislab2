import 'package:flutter/material.dart';
import 'clothes_question.dart';
import 'clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  static const questions = [
    {
      'question': "Choose a product:",
      'answer': [
        'Hoodie',
        'T-Shirt',
        'Dress',
        'Skirt',
      ],
    },
    {
      'question': "Pick a size:",
      'answer': [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
    },
    {
      'question': "Your favourite color:",
      'answer': [
        'Black',
        'White',
        'Red',
        'Green',
        'Purple',
      ],
    },
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        // A widget which will be started on application startup
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          OutfitQuestion(questions[_questionIndex]['question'].toString()),
          ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
            return OutfitAnswer(_iWasTapped, answer);
          }),
        ]),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
