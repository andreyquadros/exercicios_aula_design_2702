import 'package:flutter/material.dart';
import 'package:flutter_exercicios/appRoutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 20,
        centerTitle: true,
        title: Text('Seja bem vindo! ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ) ,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed:
            (){
              Navigator.pushNamed(context, AppRoutes.firstPage);
            }, icon: Icon(Icons.last_page_outlined), label: Text('Acessar Primeira Página')),
            ElevatedButton.icon(onPressed:
                (){
              Navigator.pushNamed(context, AppRoutes.secondPage);
            }, icon: Icon(Icons.last_page_outlined), label: Text('Acessar Segunda Página')),
            ElevatedButton.icon(onPressed:
                (){
              Navigator.pushNamed(context, AppRoutes.thirdPage);
            }, icon: Icon(Icons.last_page_outlined), label: Text('Acessar Terceira Página')),
          ],
        ),
      ),
    );
  }
}
