import 'package:flutter/material.dart';
import '../model/recruta.dart';
import 'package:intl/intl.dart';

class Recrutamento extends StatefulWidget {
  const Recrutamento({
    super.key,
  });

  @override
  State<Recrutamento> createState() => _RecrutamentoState();
}

class _RecrutamentoState extends State<Recrutamento> {

  List<Recruta> recrutas = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      recrutas = criarRecrutas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ...mostrarRecruta()
          ],
        ),
      ),
    );
  }

  List<Recruta> criarRecrutas() {
    return [
      Recruta(
          id: 1,
          nome: "Daniel Almeida",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: true,
          promovido: true),
      Recruta(
          id: 2,
          nome: "Janio Eugenio",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: true,
          promovido: true),
      Recruta(
          id: 3,
          nome: "Franciane Eugenio",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: false,
          promovido: false),
      Recruta(
          id: 4,
          nome: "Tiago Jordan",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: true,
          promovido: false),
      Recruta(
          id: 5,
          nome: "Edwilson Santana",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: true,
          promovido: false),
      Recruta(
          id: 6,
          nome: "Gabriel Castro",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: false,
          promovido: false),
      Recruta(
          id: 6,
          nome: "Gildemar Diniz",
          dataLimite: DateTime.now().add(Duration(days: 30)),
          aprovado: true,
          promovido: false),
    ];
  }




  List<Widget> mostrarRecruta() {
    return recrutas
        .map(
          (recruta) => Container(
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
                          'https://www.picos.pi.leg.br/portal/files/imagem/usuarios/user.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recruta.nome!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      SizedBox(height: 5,),
                      Text("Prazo: " + DateFormat('dd/MM/yyyy').format(recruta.dataLimite!)),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Chip(label: recruta.aprovado! ? Text("Aprovado",style: TextStyle(color: Colors.white),):Text("Reprovado",style: TextStyle(color: Colors.white)),backgroundColor: recruta.aprovado! ? Colors.green:Colors.red,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
                Divider(),
          ])
          ),
        )
        .toList();
  }
}
