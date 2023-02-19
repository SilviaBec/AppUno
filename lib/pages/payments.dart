import '../widgets/drawer.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text( "Ventas"),),
      drawer: const DrawerWidget(),
      body:Column(children: [
        const Text ("Cobros"),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: const CircleAvatar(),
                title: const Text("Beatriz Pinzón"),
                subtitle: const Text("Direccion"),
                onTap: (){},
              ),
              const ListTile(
                leading:  CircleAvatar(),
                title: Text("Daniel Valencia"),
                subtitle:  Text("Direccion"),
              ),
              const ListTile(
                leading:  CircleAvatar(),
                title: Text("Patricia Fernandez"),
                subtitle:  Text("Direccion"),
              )
            ]
          ),
        )
      ],),


  floatingActionButton: FloatingActionButton(child: const Icon(Icons.shopping_cart),onPressed: (){},),

    );
  }
}