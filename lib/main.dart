import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

enum Screens {
  home,
  get,
  post,
  patch,
  put,
  delete,
  about,
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP Requests',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'HTTP Requests'),
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
  var appState = "default";

  void navigate(String value) {
    setState(() {
      appState = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (appState == Screens.home) ...{},
            if (appState == Screens.about) ...{},
            if (appState == "default") ...{}
          ],
        ),
      ),
    );
  }
}
