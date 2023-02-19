import 'package:flutter/material.dart';

class NewSalePage extends StatelessWidget {
  const NewSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ventas RedLeaf"),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children:[ 
          const Text ("Nueva venta"),

          const SizedBox(
            height: 17,
          ),

          const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre Cliente',
            ),
          ),

          const SizedBox(
            height: 17,
          ),
      
          const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Dirección',
            ),
          ),

          const SizedBox(
            height: 17,
          ),
      
          const  TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor',
            ),
          ),


          const SizedBox(
            height: 20,
          ),
      
          ElevatedButton(onPressed: (){}, child: const Text("Guardar"))
      
          ],),
        ),
      )
    );
  }
}