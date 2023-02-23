import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: _header(),
        ),
        const ListTile  (
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),
  );
  }

  Widget _header(){
    //Falta: consultar datos cabeza drawer
    const  image = Icon(Icons.manage_accounts);
    const  name = "Beatriz Pinzón";
    const  email = "betty@email.com";
    return Row(children:  [
        const CircleAvatar (
          radius: 35,
          child: image,
          ),

        const SizedBox( 
          width: 17,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:const [
          Text(name, style:  TextStyle(color: Colors.white, fontSize:24),),
          SizedBox(
            height: 9,
          ),
          Text(email, style:  TextStyle(color: Colors.white),),
        ],)
      ],);
  }
}