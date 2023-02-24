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
          _formulario(),
          
              
          ],),
        ),
      )
    );
  }
  Widget _formulario(){

    final formkey = GlobalKey<FormState>();
    return Form(
      key:formkey,
      child: Column(children: [
      _campoCliente(),
          
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
            height: 17,
          ),
          
          
                const  TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Numero cuotas',
            ),
          ),
          
          const SizedBox(
            height: 17,
          ),
          
                const  TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor cuota',
            ),
          ),
          // DropdownButton(items: [DropdownMenuItem(child: Text("Diario"))], onChanged: (value){}),
          
          const SizedBox(
            height: 20,
          ),
              
          ElevatedButton(onPressed: (){}, child: const Text("Guardar"))
      ],),
    );
  }

  Widget _campoCliente(){
    return TextFormField(
      autofocus:true,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        icon: Icon(Icons.manage_accounts),
        border:OutlineInputBorder(),
        labelText: 'Nombre Cliente',

      ),
  validator: ((value) {
    if (value==null || value.isEmpty) {
      return "Campo obligatorio";
      
    }
    return null;
  }),

    );
  }
}