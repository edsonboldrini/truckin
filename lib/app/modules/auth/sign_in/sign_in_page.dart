import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';
import 'sign_in_controller.dart';

class SignInPage extends StatefulWidget {
  final String title;
  const SignInPage({Key key, this.title = "SignIn"}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends ModularState<SignInPage, SignInController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('LOGO'),
                    Container(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Qual e seu numero de telefone?',
                    ),
                    Container(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '(XX) XXXXX-XXXX',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      height: 12,
                    ),
                    RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Text(
                        'Entrar',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () => print('sign_in'),
                    ),
                    FlatButton(
                      onPressed: () => Modular.to.pushNamed('/auth/sign_up'),
                      child: Text(
                        'Nao possui conta, increva-se ja',
                        style: TextStyle(
                          color: CustomColors.blueFacebook,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () => print('facebook'),
                      color: CustomColors.blueFacebook,
                      child: Text(
                        'Entrar com Facebook',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
