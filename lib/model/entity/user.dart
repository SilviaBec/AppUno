class UserEntity {
  late String? correo;
  late String? nombre;
  late String? direccion;
  late String? telefono;
  late String? clave;
  late bool? esAdmin;
  //constructor
  UserEntity({this.correo, this.nombre, this.direccion,this.telefono,this.clave,this.esAdmin});
}