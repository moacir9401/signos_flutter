import 'package:flutter/material.dart';

class DetalheSigno extends StatelessWidget{

  late String _nome;
 late String _dataInicio;
 late String _dataFim;
 late String _imagem;
 late String _descricao;

  DetalheSigno(Map signo){
    this._nome = signo['Nome'];
    this._imagem = signo['Imagem'];
    this._dataInicio = signo['DataInicio'];
    this._dataFim = signo['DataFim'];
    this._descricao = signo['Descricao'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Signo: $_nome"),
        centerTitle: true,

      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("$_imagem", width: 200),

              SizedBox(height: 30),

              Text(
                  "$_nome", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), textAlign: TextAlign.center
              ),

              SizedBox(height: 15),

              Text(
                  "$_dataInicio - $_dataFim", style: TextStyle(fontSize: 18)
              ),

              SizedBox(height: 30),

              Text('Características: ', style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),

              SizedBox(height: 10),

              Text("$_descricao", style: TextStyle( color: Colors.black, fontSize: 16))

            ],
          ),
        ),
      ),
    );
  }
}
