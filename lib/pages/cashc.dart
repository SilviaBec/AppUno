import 'package:app_uno/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CashcPage extends StatelessWidget {
  const CashcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cierre caja")),
        drawer: const DrawerWidget(),
    )
    ;
  }
}