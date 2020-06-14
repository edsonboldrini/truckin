import 'package:truckin/app/modules/auth/sms_code/sms_code_page.dart';

import 'sms_code/sms_code_controller.dart';
import 'package:truckin/app/modules/auth/sign_in/sign_in_page.dart';
import 'package:truckin/app/modules/auth/sign_up/sign_up_page.dart';

import 'sign_up/sign_up_controller.dart';
import 'sign_in/sign_in_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SmsCodeController()),
        Bind((i) => SignUpController()),
        Bind((i) => SignInController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SignInPage()),
        Router('/sign_up', child: (_, args) => SignUpPage()),
        Router('/sms_code', child: (_, args) => SmsCodePage()),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
