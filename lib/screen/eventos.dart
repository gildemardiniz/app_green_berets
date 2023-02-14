import 'package:flutter/material.dart';

class Eventos extends StatefulWidget {
  const Eventos({
    super.key,
  });

  @override
  State<Eventos> createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        exibirEvento(),
        Divider(),
        exibirEvento(),
        Divider(),
        exibirEvento(),
      ],
    ));
  }

  Widget exibirEvento() {
    return InkWell(
      onTap: (){
        _showMyDialog();
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(19, 158, 158, 158),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 75, 29),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 90,
                  width: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("20",
                          style: TextStyle(fontSize: 38, color: Colors.white)),
                      Text("Fev",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Operação Calvário",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text("Campo First Fild",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Operação Calvário"),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text("Início as 08:00"),
                Text('Fim as 12:00'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
