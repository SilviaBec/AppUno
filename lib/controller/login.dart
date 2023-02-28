// import 'package:app_uno/controller/request/login.dart';

import '../model/repository/user.dart';
import 'request/login.dart';

class LoginController {

  late final UserRepository _userRepository;
  //constructor que inicializará la variable
  LoginController(){
    _userRepository = UserRepository();
  }
  String validarCorreoClave(LoginRequest request){
      //chek que el user tenga el correo que proporcionó
      var user= _userRepository.findByEmail(request.correo);
      //check if la clave es equal a la que esta en la BD
      if(user.clave != request.clave){
        throw Exception("Datos de ingreso invalidos");
      }

      return user.nombre!;

  }
}