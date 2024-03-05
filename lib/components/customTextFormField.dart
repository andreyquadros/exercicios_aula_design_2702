import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  final String campo;
  const customTextFormField({Key? key, required this.campo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: 'Seu $campo',
        hintText: 'Digite seu $campo',
        // A borda padrão do TextFormField já é um UnderlineInputBorder,
        // mas você pode personalizá-la como quiser:
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        // Você também pode definir bordas para outros estados, como erro, etc.
      ),
    );
  }
}
