import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart'; // Se necessário, ajuste conforme a configuração do seu projeto

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  String urlImage = 'https://picsum.photos/id/237/600/1000';

  void changeImage(){
    Random rnd = Random();
    int idSorteado = rnd.nextInt(1001);
    print('Id gerado foi: $idSorteado');
    setState(() {
      urlImage = 'https://picsum.photos/id/$idSorteado/600/1000';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 20,
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Terceiro App em Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Imagem de fundo
          Positioned.fill(
            child: Image.network(
              '$urlImage',
              fit: BoxFit.cover,
            ),
          ),
          // Rodapé
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60, // Ajuste a altura conforme necessário
              color: FlexColor.goldLightSecondary,
            ),
          ),
          // FloatingActionButton "invadindo" a imagem
          Positioned(
            bottom: 30, // Ajuste este valor para controlar o quanto o botão "invade" a imagem
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: changeImage,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.refresh,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
