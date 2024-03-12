import 'package:flutter/material.dart';
import 'package:flutter_exercicios/database/supabaseDB.dart';

class ListPeople extends StatefulWidget {
  const ListPeople({Key? key}) : super(key: key);

  @override
  State<ListPeople> createState() => _ListPeopleState();
}

class _ListPeopleState extends State<ListPeople> {

  List<String> nomes = [];
  @override
  Future<void> buscarNomes() async {
    var novosNomes = await OperationsSupabase().listPeopleSupabase();
    setState(() {
      nomes = novosNomes;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buscarNomes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 60,
      title: Text('Listagem de Cadastros',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ) ,),
    ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nomes[index], style: TextStyle(color: Colors.black),),
          );
        },
      ),
    );
  }
}
