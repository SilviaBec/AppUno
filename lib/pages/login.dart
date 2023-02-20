import 'package:flutter/material.dart';

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
          _form(),
      
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




  Widget _form(){
    return Column(children: [
      const TextField(
            obscureText: false,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Correo Electrónico',
        ),
      ),

      const SizedBox(height: 16,),
      
      const TextField(
        obscureText: true,
        decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
        ),
      ),
      
      const SizedBox(height: 30,),
      ElevatedButton(onPressed: (){}, child: const Text("Iniciar sesion"),),
      
      const SizedBox(height: 15,),
    ],);
  }

}