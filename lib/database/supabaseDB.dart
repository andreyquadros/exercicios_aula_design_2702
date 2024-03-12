import 'package:supabase_flutter/supabase_flutter.dart';

class OperationsSupabase {
  final supabase = Supabase.instance.client;
  Future<void> insertRowSupabase(
      String nome, int idade, String email, String celular) async {
    await supabase.from('cadastroPessoa').insert(
        {'nome': nome, 'idade': idade, 'E-mail': email, 'celular': celular});
  }
  Future<List<String>> listPeopleSupabase() async {
    List<String> nomes = [];

    final resultado = await supabase
        .from('cadastroPessoa')
        .select('nome');

    for(var pessoa in resultado){
      nomes.add(pessoa['nome']);
    }
    return nomes;

  }
}
