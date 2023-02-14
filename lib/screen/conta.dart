import 'package:flutter/material.dart';

import 'eventos.dart';

class MinhaConta extends StatefulWidget {
  const MinhaConta({
    super.key,
  });

  @override
  State<MinhaConta> createState() => _MinhaContaState();
}

class _MinhaContaState extends State<MinhaConta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1594709739513978887/8shdKDEF_400x400.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gildemar Diniz",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16)),
                  SizedBox(height: 10,),
                  Text("gildemardiniz@gmail.com"),
                ],
              )
            ],
          ),
        ),
        Divider(),
        const ListTile(
          title: Text("Conta"),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Meu perfil"),
          trailing: Icon(Icons.arrow_forward),
        ),
        const ListTile(
          title: Text("Segurança"),
        ),
        const ListTile(
          leading: Icon(Icons.password),
          title: Text("Senha"),
          trailing: Icon(Icons.arrow_forward),
        ),
        const ListTile(
          title: Text("Eventos"),
        ),
        const ListTile(
          leading: Icon(Icons.qr_code_2),
          title: Text("Leitor QR code"),
          trailing: Icon(Icons.arrow_forward),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Divider(),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text("Sair"),
        ),
      ]),
    );
  }
}
