import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weekday_selector/flutter_weekday_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Week Day Selector',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Week Day Selector"),
      ),
      body: Center(
        child: WeekDaySelector(
          // width: 100,
          // height: 50,

          onSubmitted: (day) {
            if (kDebugMode) {
              print(
                  "${day.name} is ${day.isSelected ? 'selected' : 'unselected'}");
            }
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
