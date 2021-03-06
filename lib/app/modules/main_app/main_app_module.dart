import 'package:flutter_modular/flutter_modular.dart';
import 'package:truckin/app/modules/main_app/home/home_page.dart';
import 'package:truckin/app/modules/main_app/home/home_controller.dart';

class MainAppModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<MainAppModule>.of();
}
