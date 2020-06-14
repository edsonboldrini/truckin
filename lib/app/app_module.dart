import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:truckin/app/app_widget.dart';
import 'package:truckin/app/modules/auth/auth_module.dart';
import 'package:truckin/app/modules/main_app/main_app_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: AuthModule()),
        Router('/main_app', module: MainAppModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}