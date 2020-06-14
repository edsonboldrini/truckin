import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';
import 'package:truckin/app/modules/shared/utils/widgets.dart';
import 'sms_code_controller.dart';

class SmsCodePage extends StatefulWidget {
  final String title;
  const SmsCodePage({Key key, this.title = "SmsCode"}) : super(key: key);

  @override
  _SmsCodePageState createState() => _SmsCodePageState();
}

class _SmsCodePageState extends ModularState<SmsCodePage, SmsCodeController> {
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
                      'Digite o codigo SMS enviado para o seu celular.',
                    ),
                    Container(
                      height: 12,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      style: TextStyle(fontSize: 48.0),
                      onChanged: controller.setCode,
                      expands: false,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '####',
                          filter: {"#": RegExp(r'[0-9]')},
                        ),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "_ _ _ _",
                      ),
                    ),
                    Container(
                      height: 12,
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
