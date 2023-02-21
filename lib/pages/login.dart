// import 'dart:js';

import 'package:app_uno/pages/payments.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  final _imageLoc= "assets/images/85.png";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
      
          _logo(),
          _form(context),
      
                  TextButton(onPressed: (){}, child: const Text("Registrarse"),),
                  TextButton(onPressed: (){}, child: const Text("Continuar sin cuenta"),),
                
          ],),
        ),
      )
    );
  }




  Widget _logo(){
    return Column(children: [
      const SizedBox(height: 60,),
            //Image.asset("assets/images/8277564.png"),
      
        Image.asset(
        _imageLoc,
        scale: 3.0
),
        const SizedBox(height: 40,),
    ],
    );
  }




  Widget _form(BuildContext context){
    final formKey = GlobalKey<FormState>();
    return Form(
      key:formKey,
      child: Column(children: [
        
        _emailField(),
        const SizedBox(height: 16,),
        _passwordField(),
      
        
        const SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
          if(formKey.currentState!.validate()){
            //Falta:hacer validacion de user y password en BD
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentsPage(),));
          }
        }, 
        child: const Text("Iniciar sesion",
        style:TextStyle(fontSize: 22)),),
        
        const SizedBox(height: 15,),
      ],),
    );
  }

  Widget _emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      maxLength: 100,
              obscureText: false,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Correo Electrónico',
          ),
          validator: (value){
            if(value==null || value.isEmpty){
              return "Este campo NO puede estar vacío";
            } 
            if(!value.contains("@") || !value.contains(".")){
              return "Correo invalido";
            }
          },
        );

  }

  Widget _passwordField(){
    return  TextFormField(
      maxLength: 20,
          obscureText: true,
          decoration:const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contraseña',
          ),
          validator:(value){
              if(value==null || value.isEmpty){
              return "Este campo es obligatorio";
            } 
            //esto se valida es en la ventana de registro
            if(value.length<6){
              return "La constraseña debe tener mas de 6 caracteres";
            }
            return null;
          } ,
        ); 
  }

}