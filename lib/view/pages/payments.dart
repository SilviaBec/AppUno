import 'new_sale.dart';

import '../widgets/drawer.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lista = _listarCobros();
    return Scaffold(
      appBar: AppBar(title:const Text( "Ventas"),),
      drawer: const DrawerWidget(),
      body:Column(children: [
        const Text ("Cobros"),
        Expanded(
          child: ListView.builder(
            itemCount:lista.length,
            itemBuilder: (context,index) => ListTile(
                
                leading: const CircleAvatar(),
                title: Text(lista[index]),
                subtitle: const Text("Direccion"),
                onTap: (){},

          ))

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
      10,//numero de elementos a generar 
      (index)=> "Usuario compra ${index+1}" //$concatena o reemplaza en la cadena y el indx pues es el parametro de esa lambda 
    );
  }
}