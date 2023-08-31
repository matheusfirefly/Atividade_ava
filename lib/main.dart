import 'package:flutter/material.dart';
import 'cargos.dart';
void main() {
  runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text("Colaboradores"),),
  body:
  Padding(padding: EdgeInsets.all(20),child: Colaboradores(),),
  ),
  )
  );
}
