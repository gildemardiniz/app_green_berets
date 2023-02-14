import 'package:flutter/material.dart';
import '../model/operador.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Operador> operadores = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      operadores = criarOperador();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("OPERADORES",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [...mostrarOperador()],
            ),
          ),
        ],
      ),
    );
  }

  List<Operador> criarOperador() {
    return [
      Operador(
        id: 1,
        nome: "Daniel Andrade",
        classe: "Assault",
      ),
      Operador(
        id: 2,
        nome: "Janio Eugenio",
        classe: "Assault",
      ),
      Operador(
        id: 3,
        nome: "Franciane Eugenio",
        classe: "Assault",
      ),
      Operador(
        id: 4,
        nome: "Tiago Jordan",
        classe: "Assault",
      ),
      Operador(
        id: 5,
        nome: "Edwilson Santana",
        classe: "D.M.R",
      ),
      Operador(
        id: 6,
        nome: "Daniel Andrade",
        classe: "Assault",
      ),
      Operador(
        id: 7,
        nome: "Gildemar Diniz",
        classe: "Assault",
      ),
    ];
  }

  List<Widget> mostrarOperador() {
    return operadores
        .map((operador) =>
        Card(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: Container(
              height: 200,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage(
                          'https://www.picos.pi.leg.br/portal/files/imagem/usuarios/user.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    operador.nome!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(operador.classe!)
                ],
              )),
        ))
        .toList();
  }
}
