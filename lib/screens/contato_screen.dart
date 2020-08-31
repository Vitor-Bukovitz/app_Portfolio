import 'package:flutter/material.dart';

class ContatoScreen extends StatefulWidget {
  @override
  _ContatoScreenState createState() => _ContatoScreenState();
}

class _ContatoScreenState extends State<ContatoScreen> {
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Digite seu nome:',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))),
    );
    final emailField = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Digite seu e-mail: ',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(26.0)),
      ),
    );
    final telefoneField = TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
          contentPadding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
          hintText: 'Insira sua mensagem:',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(26.0))),
    );
    final enviarButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          showAlertDialog(context);
        },
        textColor: Colors.white,
        child: const Text(
          'Enviar',
          textAlign: TextAlign.center,
        ),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            //FOREGROUND
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            //FORM
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 230.0, 20.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    nameField,
                    const SizedBox(height: 22.0),
                    emailField,
                    const SizedBox(height: 22.0),
                    telefoneField,
                    const SizedBox(height: 22.0),
                    mensagemField,
                    const SizedBox(height: 22.0),
                    enviarButton,
                    SizedBox(
                      height: 22.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    onPressed: () => Navigator.of(context).pop(false),
    child: const Text("fechar"),
  );

  // set up the AlertDialog
  final AlertDialog alert = AlertDialog(
    title: const Text(
      "Mensagem enviada!",
      style: TextStyle(color: Colors.green),
      textAlign: TextAlign.center,
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
