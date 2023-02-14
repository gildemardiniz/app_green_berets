import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/screen/conta.dart';
import 'package:nosso_primeiro_projeto/screen/eventos.dart';
import 'package:nosso_primeiro_projeto/screen/home.dart';
import 'package:nosso_primeiro_projeto/screen/recrutamento.dart';

import 'widgets/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Berets',
      theme: ThemeData(
        primarySwatch: corGreenBerets,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    MyHomePage(),
    Eventos(),
    Recrutamento(),
    MinhaConta(),
  ];

  final List<String> _titles = [
    "Green Berets Airsoft",
    "Eventos",
    "Recrutamento",
    "Minha Conta",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(_titles[_indiceAtual].toString()),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "Início"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Eventos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_search),
            label: "Recrutamento",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Minha Conta",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}

const MaterialColor corGreenBerets = const MaterialColor(
  0xff004B1D,
  const <int, Color>{
    50: Color(0xff004B1D),
    100: Color(0xff004B1D),
    200: Color(0xff004B1D),
    300: Color(0xff004B1D),
    400: Color(0xff004B1D),
    500: Color(0xff004B1D),
    600: Color(0xff004B1D),
    700: Color(0xff004B1D),
    800: Color(0xff004B1D),
    900: Color(0xff004B1D),
  },
);
