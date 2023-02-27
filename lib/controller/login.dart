import '../model/repository/user.dart';

class LoginController {

  late final UserRepository _userRepository;
  //constructor que inicializará la variable
  LoginController(){
    _userRepository = UserRepository();
  }
  void validarCorreoClave(String correo,String clave){
      //chek que el user tenga el correo que proporcionó
      var user= _userRepository.findByEmail(correo);
      //check if la clave es equal a la que esta en la BD
      if(user.clave != clave){
        throw Exception("Datos de ingreso invalidos");
      }

  }
}