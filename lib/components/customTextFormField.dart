import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  final String campo;
  final TextEditingController customController;
  const customTextFormField({Key? key, required this.campo, required this.customController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: customController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: '$campo',
        hintText: '$campo',
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
