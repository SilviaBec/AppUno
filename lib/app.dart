import 'package:flutter/material.dart';

import 'pages/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    title: "BlueLeaf",
    home: LoginPage(),
  );
  }
}