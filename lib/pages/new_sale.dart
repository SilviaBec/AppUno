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
            height: 8,
          ),
          _formulario(context),
          
              
          ],),
        ),
      )
    );
  }
  Widget _formulario(BuildContext context){

    final formkey = GlobalKey<FormState>();
    return Form(
      key:formkey,
      child: Column(children: [
      _campoCliente(),
          
          const SizedBox(
            height: 8,
          ),
              
          _campoDireccion(),
          
          const SizedBox(
            height: 8,
          ),
              
          _campoMonto(),
          const SizedBox(
            height: 8,
          ),
          
          
        _numeroCuotas(),
          
          const SizedBox(
            height: 8,
          ),
          
        _valorCuota(),
        // const SizedBox(
        //     height: 8,
        //   ),
        // _periodicidad(),
          // DropdownButton(items: [DropdownMenuItem(child: Text("Diario"))], onChanged: (value){}),
          
          const SizedBox(
            height: 10,
          ),
              
          ElevatedButton(onPressed: (){
            if(formkey.currentState!.validate()){
              //Falta guardar en BD
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content:Text("venta exitosa"),
              ),);
Navigator.pop(context);
            }

          }, child: const Text("Guardar"))
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
  Widget _campoDireccion(){
    return  TextFormField(
      keyboardType: TextInputType.streetAddress,
                decoration:const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Dirección',
            ),
          validator: ((value) {
    if (value==null || value.isEmpty) {
      return "Campo obligatorio";
      
    }
    return null;
  }),
          
          );
  }

  Widget _campoMonto(){
    return TextFormField(
      keyboardType: TextInputType.number,
      initialValue: "0",
      textAlign: TextAlign.right,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor',
            ),
          validator: ((value) {
    if (value==null || value.isEmpty) {
      return "Campo obligatorio";
      
    }
    if(int.parse(value)<1){
      return "Valor no válido";
    }
    return null;
  }),

          );
  }
  Widget _numeroCuotas(){
    return  TextFormField(
      keyboardType: TextInputType.number,
      initialValue: "0",
      textAlign: TextAlign.right,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Numero cuotas',
            ),
validator: ((value) {
    if (value==null || value.isEmpty) {
      return "Campo obligatorio";
      
    }
    if(int.parse(value)<1){
      return "Valor no válido";
    }
    return null;
  })


          );
  }
  Widget _valorCuota(){
    return  TextFormField(
      enabled:false,
      keyboardType:  TextInputType.number,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor cuota',
            ),
          );
  }

  // Widget _periodicidad(){
  //   var opciones =<String>["Diario", "Semanal", "Quincenal", "Mensual"];
  //   return Expanded(
  //     child:DropdownButtonFormField(
  //     decoration: const InputDecoration(
  //               border: OutlineInputBorder(),
  //               labelText: 'Periodicidad'
  //   ),
  //   items: opciones
  //   .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
  //       value: value,
  //       child: Text(value),
  //       )).toList(),
  //       onChanged: (value){},
  //   )
  //   );
  // }

}