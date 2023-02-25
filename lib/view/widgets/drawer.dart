import '../pages/cashc.dart';
import '../pages/payments.dart';
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
        ListTile  (
          leading: const Icon(Icons.message),
          title: const Text('Cobros'),
          onTap:(){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context)=> const PaymentsPage(),));
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Ventas'),
          onTap:(){},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Clientes'),
          onTap:(){},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Cierre de caja'),
          onTap:(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CashcPage()));
          },
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