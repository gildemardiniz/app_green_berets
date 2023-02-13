import 'package:flutter/material.dart';

import 'menu.dart';



class Eventos extends StatefulWidget {
  const  Eventos({super.key});

  @override
  State< Eventos> createState() => _Eventos();
}

class _Eventos extends State<Eventos> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Eventos",textAlign: TextAlign.center,),
      ),
      body: Container(alignment: Alignment.center,
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Text("20/02"),
              title: Text('Operação Calvário'),
              subtitle: Text("Jogo organizado"),

            ),
            ListTile(
              leading: Text("20/02"),
              title: Text('Operação Calvário'),
              subtitle: Text("Jogo organizado"),
            ),
            ListTile(
              leading: Text("20/02"),
              title: Text('Operação Calvário'),
              subtitle: Text("Jogo organizado"),
            ),
          ],
        ),
      ),
    );

  }
}
