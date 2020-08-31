import 'package:flutter/material.dart';

class ContatoForms extends StatefulWidget {
  ContatoForms();

  @override
  _ContatoFormsState createState() => _ContatoFormsState();
}

class _ContatoFormsState extends State<ContatoForms> {
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Digite seu nome:',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))),
    );
    final emailField = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Digite seu E-mail: ',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(26.0)),
      ),
    );
    final telefoneField = TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Digite seu telefone:',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))),
    );
    final mensagemField = TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
          hintText: 'Insira sua mensagem:',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))),
    );
    final enviarButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blueGrey,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          'Enviar',
          textAlign: TextAlign.center,
        ),
        textColor: Colors.white,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 230.0, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  nameField,
                  SizedBox(height: 22.0),
                  emailField,
                  SizedBox(height: 22.0),
                  telefoneField,
                  SizedBox(height: 22.0),
                  mensagemField,
                  SizedBox(height: 22.0),
                  enviarButton,
                  SizedBox(
                    height: 22.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
