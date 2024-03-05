import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 20,
        centerTitle: true,
        title: Text('Primeiro App em Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ) ,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Padding(
            padding: const EdgeInsets.fromLTRB(32, 200, 32, 0),
            child: Text('Quantidade de vezes que o botão foi pressionado: ',
              style: TextStyle(
                fontSize: 30,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
            child: Text('0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: FlexColor.blueLightPrimary,
                ),
              ),
              Center(
                child: FloatingActionButton(onPressed: null,
                backgroundColor: FlexColor.blueLightPrimary,
                  elevation: 15,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
