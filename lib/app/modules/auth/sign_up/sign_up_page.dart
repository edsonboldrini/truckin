import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';
import 'package:truckin/app/modules/shared/utils/widgets.dart';
import 'sign_up_controller.dart';

class SignUpPage extends StatefulWidget {
  final String title;
  const SignUpPage({Key key, this.title = "SignUp"}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends ModularState<SignUpPage, SignUpController> {
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
                    TextField(
                      keyboardType: TextInputType.text,
                      onChanged: controller.setName,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                      ),
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
                        labelText: 'Telefone',
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
                            text: 'Criar conta',
                            function: () => controller.signUp(),
                          );
                        else {
                          return CustomRaisedButton(
                            text: 'Criar conta',
                            function: null,
                          );
                        }
                      }
                    }),
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
