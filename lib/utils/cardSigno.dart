import 'package:flutter/material.dart';
import 'package:signos/pages/DetalheSigno.dart';

class CardSigno extends StatelessWidget{

  var _nome;
  var _imagem;
  var _dataSigno;

  CardSigno(Map signo){
    this._nome = signo['Nome'];
    this._imagem = signo['Imagem'];
    this._dataSigno = signo;
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)
      ),
      child: Column(
        children: [

          Image.asset("$_imagem", width: 90),

          SizedBox(height: 10),

          Text(
              "$_nome", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center
          ),

          SizedBox(height: 10),

        ],
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetalheSigno(this._dataSigno)
            )
        );
      },
    );

  }
}