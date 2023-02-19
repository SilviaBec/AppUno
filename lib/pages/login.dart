import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
      
      
            const SizedBox(
              height: 60,
            ),
            //Image.asset("assets/images/8277564.png"),
      
        Image.asset(
        
          'assets/images/55.png',
        
          scale: 3.0
        
      ),
      
      
      
        const SizedBox(
              height: 40,
            ),
      
            const TextField(
            obscureText: false,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Correo Electrónico',
        ),
      ),
      
      
      const SizedBox(
              height: 16,
            ),
      
      const TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contraseña',
        ),
      ),
      
      const SizedBox(
              height: 30,
            ),
      
            
            
                  ElevatedButton(onPressed: (){}, child: const Text("Iniciar sesion"),),
      
                const SizedBox(
                  height: 15,
                ),
      
                  TextButton(onPressed: (){}, child: const Text("Registrarse"),),
      
                  TextButton(onPressed: (){}, child: const Text("Continuar sin cuenta"),),
                
          ],),
        ),
      )
    );
  }
}