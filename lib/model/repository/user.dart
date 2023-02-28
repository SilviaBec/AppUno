import '../entity/user.dart';

class UserRepository {
  //Esto lo definire x ahora x lo que no me voy a conectar a la BD
  final _users=<String, UserEntity>{};

  UserRepository(){
    _users["beatriz@email.com"] = UserEntity(correo: "beatriz@email.com", nombre: "Beatriz pinzon", direccion: "calle 127 #58-60", telefono: "123245", clave: "123456",esAdmin: true

    );

  _users["daniel@email.com"] = UserEntity(correo: "daniel@email.com", nombre: "Daniel Valencia", direccion: "calle 128 #59-61", telefono: "6789", clave: "234567",esAdmin: false

    );

  }
  UserEntity findByEmail(String correo){
    var user= _users[correo]; //esto me devuelve el user entity , el objeto. o sea llamo esa lista en su llave correo pero el correo 
    //me retorna toda la info de la persona o sea todo el objeto

    //y si el correo no esta ? pues:
    if(user== null){
      throw Exception("Usuario inexistente");
    }
    //en caso de que el usuario si exista
    return user;
  }
}

//Todo aca fue para consultar en el repo que un user exist