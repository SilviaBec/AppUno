import 'package:flutter/material.dart';

class RegisterReq{
  late String nombre;
  late String direccion;
  late String correo;
  late String? telefono;
  late String clave;

  @override
  String toString() {
    
    return "$nombre,$direccion,$correo,$telefono,$clave";
  }


}

class RegisterPage extends StatelessWidget {
  late RegisterReq _datos;
  RegisterPage({super.key}){
    _datos=RegisterReq();
  }

  @override
  Widget build(BuildContext context) {
    var formKey=GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: const Text("Registro"),),
      body:Form(
        key:formKey,
        child: Padding(
          padding: const EdgeInsets.all( 8.0),
          child: SingleChildScrollView(
            child:Column(children: [
              _basicWidget("Nombre", validarCampoRequerido,(newValue) { _datos.nombre = newValue!;}),
              _basicWidget("Dirección", validarCampoRequerido, (newValue) {_datos.direccion = newValue!; }),
              _basicWidget("Correo", validarCampoRequerido, (newValue) {_datos.correo = newValue!; }),
              _basicWidget("Telefono", (value) => null, (newValue) {_datos.telefono = newValue; }),
              _basicWidget("Constraseña", validarCampoRequerido, (newValue) {_datos.clave = newValue!; }),
              ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  print(_datos);
                }
              }, child: const Text("Registrar"))
            ],)
          ),
        ),
      ),
    );
  }


  String? validarCampoRequerido(String? value){
    if(value== null || value.isEmpty){
      return "El campo es obligatorio";
    }
    return null;
  }


  Widget _basicWidget(String title,FormFieldValidator<String?> validate , FormFieldSetter<String?> save){
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        maxLength: 100,
                obscureText: false,
                decoration:  InputDecoration(
                border:const  OutlineInputBorder(),
                labelText: title,
            ),
            validator: validate,
            onSaved: save,
          ),
    );
  }
}