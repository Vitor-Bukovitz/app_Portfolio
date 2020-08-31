import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class TesteTela extends StatefulWidget {
  @override
  _TesteTelaState createState() => _TesteTelaState();
}

class _TesteTelaState extends State<TesteTela> {
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://flutter.dev/';
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  } //SAP

  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  Future<void> _launchInBrowser(String url) async {
    //Abra o url no navegador
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    const _fotoPerfil =
        "https://wl-incrivel.cf.tsp.li/resize/728x/jpg/07e/a69/7f38b75bc0a1e7cc77324323e7.jpg";
    const _sobremin = "sjdakn samçfla";
    const _nome = "Rafael";
    const _sobrenome = "Silva";
    //return Container();
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(_fotoPerfil),
                        ),
                        SizedBox(
                          width: 40, //distancia nome e imagem
                        ),
                        Text(
                          _nome,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          _sobrenome,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  //  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "SOBRE MIM",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_sobremin) //sobre min conteudo
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  //WHATSAPP
                                  RaisedButton(
                                    onPressed: () {
                                      FlutterOpenWhatsapp.sendSingleMessage(
                                          "5531982785771", "Olá Rafael!");
                                    },
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      //tamanho
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        child:
                                            Image.asset('images/whastsapp.png'),
                                      ),
                                    ),
                                  ),
                                  //INSTAGRAM
                                  RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        _launched = _launchUniversalLinkIos(
                                            'https://www.instagram.com/');
                                      });
                                    },
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      //tamanho
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        child:
                                            Image.asset('images/instagram.png'),
                                      ),
                                    ),
                                  ),
                                  //FACEBOOK
                                  RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        _launched = _launchUniversalLinkIos(
                                            'https://pt-br.facebook.com/');
                                      });
                                    },
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      //tamanho
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        child:
                                            Image.asset('images/facebook.png'),
                                      ),
                                    ),
                                  ),
                                  //TWITTER
                                  RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        _launched = _launchUniversalLinkIos(
                                            'https://twitter.com/');
                                      });
                                    },
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      //tamanho
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        child:
                                            Image.asset('images/twitter.png'),
                                      ),
                                    ),
                                  ),
                                  //SITE
                                  RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        _launched =
                                            _launchInBrowser(_launchUrl);
                                      });
                                    },
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      //tamanho
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        child:
                                            Image.asset('images/site_logo.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
