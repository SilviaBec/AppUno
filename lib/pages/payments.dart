import 'package:app_uno/pages/new_sale.dart';

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


  floatingActionButton: FloatingActionButton(
    child: const Icon(Icons.shopping_cart),
    onPressed: (){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context)=> const NewSalePage(),
      ),
      );
    },),

    );
  }

  List<String> _listarCobros(){
    //Falta: Los cobros del dia pendientes en la base de dat.
    return List<String>.generate( //quiero q genere un lista de elementso
      10,//numero de elementos 
      (index)=> "Usuario $index" //$concatena o reemplaza en la cadena y el indx pues es la variable 
    );
  }
}