// import 'dart:js';

import 'register.dart';

import '../../controller/login.dart';

import '../../controller/request/login.dart';
import 'payments.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  final _imageLoc= "assets/images/85.png";
  //para creacion objetos bd, late es que la usare despues para no tener que inicializar ahi mismo
  //le aviso que model no estara nulo que se hara despues y al inicializarla no es necesario borrarlo
  //late String model;

  late LoginController _controller;
  //antes tenia  late LoginRequest _model; pero lo cambie por:
  late LoginRequest _request;

  LoginPage({super.key}){
    _controller = LoginController();
    _request = LoginRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
      
          _logo(),
          _form(context),
      
                  TextButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> RegisterPage()));
                  },child: const Text("Registrarse"),),
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
            formKey.currentState!.save();
            //validacion de user y password en BD
            try {
              var nombre=_controller.validarCorreoClave(_request);


            Navigator.push(context, MaterialPageRoute(builder: (context)=> 
            PaymentsPage(correo:_request.correo,nombre:nombre),
            )
            );
            } catch (e) {
              // showDialog(context: context, builder: (context)=>AlertDialog(
              //   title:const Text("Error"),
              //   content: Text(e.toString())));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
            }

            
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
              labelText: 'Correo Electr??nico',
          ),
          validator: (value){
            if(value==null || value.isEmpty){
              return "Este campo NO puede estar vac??o";
            } 
            if(!value.contains("@") || !value.contains(".")){
              return "Correo invalido";
            }
            return null;
          },
          onSaved: (value){
            _request.correo = value!;
          },
        );

  }

  Widget _passwordField(){
    return  TextFormField(
      maxLength: 20,
          obscureText: true,
          decoration:const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contrase??a',
          ),
          validator:(value){
              if(value==null || value.isEmpty){
              return "Este campo es obligatorio";
            } 
            //esto se valida es en la ventana de registro
            if(value.length<6){
              return "La constrase??a debe tener mas de 6 caracteres";
            }
            return null;
          } ,
          onSaved: (value){
            _request.clave=value!;
          },
        ); 
  }

}