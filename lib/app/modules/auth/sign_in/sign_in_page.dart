import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';
import 'package:truckin/app/modules/shared/utils/widgets.dart';
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
                height: MediaQuery.of(context).size.height * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 100 / 50,
                      child: Image.asset('assets/icons/icon.png'),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Qual e seu numero de telefone?',
                    ),
                    Container(
                      height: 12,
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: controller.setPhone,
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '(##) #####-####',
                          filter: {"#": RegExp(r'[0-9]')},
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: '(XX) XXXXX-XXXX',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      height: 12,
                    ),
                    Observer(builder: (_) {
                      if (controller.isLoading) {
                        return CustomLoading();
                      } else {
                        if (controller.isFormValid)
                          return CustomRaisedButton(
                            text: 'Entrar',
                            function: () => controller.signIn(),
                          );
                        else {
                          return CustomRaisedButton(
                            text: 'Entrar',
                            function: null,
                          );
                        }
                      }
                    }),
                    Container(
                      height: 12,
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
                height: MediaQuery.of(context).size.height * 0.10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CustomRaisedButton(
                      text: 'Entrar com Facebook',
                      color: CustomColors.blueFacebook,
                      function: () => print('facebook'),
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
