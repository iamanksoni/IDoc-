import 'package:flutter/material.dart';
import 'authentication.dart';
import 'Mapping.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Important Documents",
      home: MappingPage(auth: Auth(),),
    );
  }
}

