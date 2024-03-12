import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercicios/appRoutes.dart';
import 'package:flutter_exercicios/database/supabaseDB.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'components/customTextFormField.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController ControllerNome = TextEditingController();
    TextEditingController ControllerIdade = TextEditingController();
    TextEditingController ControllerEmail = TextEditingController();
    TextEditingController ControllerCelular = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text('Entrada de Dados',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Seja bem vindo! Aplicativo para entrada de dados: ',
              style: TextStyle(
                color: FlexColor.blueLightPrimary,
                fontSize: 20
              ),),
              SizedBox(height: 20,),
              customTextFormField(customController: ControllerNome, campo: 'Nome',),
              customTextFormField(customController: ControllerIdade, campo: 'Idade',),
              customTextFormField(customController: ControllerEmail, campo: 'E-mail',),
              customTextFormField(customController: ControllerCelular, campo: 'Celular',),
              SizedBox(height: 30,),
              Container(
                color: FlexColor.blueLightPrimary,
                width: 140,
                child: ElevatedButton.icon(
                    onPressed: () async {
                      await OperationsSupabase().insertRowSupabase(ControllerNome.text, int.parse(ControllerIdade.text), ControllerEmail.text, ControllerCelular.text);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Inserção realizada com sucesso!')));
                    },
                    icon: Icon(Icons.save_alt),
                    label: Text('Salvar', style: TextStyle(
                      color: Colors.white
                    ),),)
              ),
              ElevatedButton.icon(onPressed: () async {
                  await Navigator.pushReplacementNamed(context, AppRoutes.listPeople);

              }, icon: Icon(Icons.list), label: Text('Listar Pessoas Cadastradas')),
            ],
          ),
        ),
      ),
    );
  }
}
