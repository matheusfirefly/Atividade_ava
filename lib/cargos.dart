import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  const Colaboradores({super.key});

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final listaCargos =[
    {'nome':'Juliana Albuquerque','cargo':'Coodenadora de apoio','telefone':'(81)99731-8333','email':'julianaalbuquerque@email.com','imagem':'mu.png'},
    {'nome':'Angela Taís','cargo':'Chefe de obras','telefone':'(81)99762-9832','email':'angelatais@email.com','imagem':'mu.png'},
    {'nome':'Carlos Alexandre','cargo':'Suporte','telefone':'(81)9631-2343','email':'carlosalexandre@email.com','imagem':'mo.png'},
    {'nome':'Ana Beatriz','cargo':'Atendente','telefone':'(81)99746-2398','email':'anabreatriz@email.com','imagem':'mu.png'},
    ];       
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaCargos.length
    ,itemBuilder: (context, i){
      var dados = listaCargos[i];
      return Column(
        children: [
          Row(children: [Image.asset("assets/"+dados["imagem"].toString(),width: 100,),
          Column(children: [
          Text(dados['nome'].toString(),style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),),
          Text(dados['cargo'].toString(),style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
          Text(dados['telefone'].toString(),style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
          Text(dados['email'].toString(),style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
          
          ],),],
          ),
          Divider(color: Color.fromARGB(255, 127, 127, 127),),

        ],
      );
    },    );
  }
}