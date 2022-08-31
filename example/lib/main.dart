// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_icon_shadow/flutter_icon_shadow.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Icon Shadow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const IconShadow(
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent,
                    size: 36,
                  ),
                ),
                IconShadow(
                  const Icon(
                    Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent,
                    size: 36,
                  ),
                  shadowColor: Colors.lightBlueAccent[100],
                ),
                const IconShadow(
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent,
                    size: 36,
                  ),
                  showShadow: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadow(
                  Icon(
                    Icons.home,
                    color: Colors.green[900],
                    size: 36,
                  ),
                  shadowColor: Colors.yellowAccent,
                ),
                IconShadow(
                  Icon(
                    Icons.home,
                    color: Colors.green[900],
                    size: 36,
                  ),
                ),
                IconShadow(
                  Icon(
                    Icons.home,
                    color: Colors.green[900],
                    size: 36,
                  ),
                  showShadow: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadow(
                  const Icon(
                    Icons.access_alarm,
                    color: Colors.black54,
                    size: 36,
                  ),
                  shadowColor: Colors.yellowAccent[400],
                ),
                IconShadow(
                  const Icon(
                    Icons.access_alarm,
                    color: Colors.black54,
                    size: 36,
                  ),
                  shadowColor: Colors.red[400],
                ),
                IconShadow(
                  const Icon(
                    Icons.access_alarm,
                    color: Colors.black54,
                    size: 36,
                  ),
                  shadowColor: Colors.cyanAccent[400],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
