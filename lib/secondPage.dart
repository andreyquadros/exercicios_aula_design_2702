import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'components/customTextFormField.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Text('Seja bem vindo! Aplicativo para entrada de dados: ',
            style: TextStyle(
              color: FlexColor.blueLightPrimary,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            customTextFormField(campo: 'Nome',),
            customTextFormField(campo: 'Idade',),
            customTextFormField(campo: 'E-mail',),
            customTextFormField(campo: 'Celular',),
            SizedBox(height: 30,),
            Container(
              color: FlexColor.blueLightPrimary,
              width: 140,
              child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.save_alt),
                  label: Text('Salvar', style: TextStyle(
                    color: Colors.white
                  ),),)
            ),
          ],
        ),
      ),
    );
  }
}
