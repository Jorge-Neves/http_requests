import 'package:flutter/material.dart';
import 'package:http_requests/widgtets/bottomBar.dart';

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
  var appState = "home";

  void navigate(value) {
    setState(() {
      print(appState);
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
          children: <Widget>[
            if (appState == "home") ...{BottomBar(navigate: navigate)},
            if (appState == Screens.about.name) ...{},
            if (appState == "default") ...{}
          ],
        ),
      ),
    );
  }
}
