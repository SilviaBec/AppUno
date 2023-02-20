import 'package:app_uno/pages/new_sale.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'pages/payments.dart';

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