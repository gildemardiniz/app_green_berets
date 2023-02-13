
import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/eventos.dart';

class Menu extends StatefulWidget{

  const Menu({super.key});

  @override
  State<StatefulWidget> createState() => _Menu();

}

class _Menu extends State<Menu>{

  @override
  Widget build(BuildContext context){

    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Gildemar Diniz"),
            accountEmail: Text("gildemardiniz@gmail.com"),
            currentAccountPicture: CircleAvatar(

              radius: 40.0,
              backgroundImage:
              NetworkImage(
                  'https://pbs.twimg.com/profile_images/1594709739513978887/8shdKDEF_400x400.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),

          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Perfil"),
            subtitle: Text("Perfil do usuário"),
          ),
          ListTile(
            leading: Icon(Icons.person_search),
            title: Text("Recrutamento"),
            subtitle: Text("recrutamento"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text("Eventos"),
            subtitle: Text("Lista de eventos"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Eventos()));}
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.37,),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Sair"),

          ),
        ],
      ),
    );
  }
}