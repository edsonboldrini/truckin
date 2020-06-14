import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'sms_code_controller.g.dart';

class SmsCodeController = _SmsCodeControllerBase with _$SmsCodeController;

abstract class _SmsCodeControllerBase with Store {
  @observable
  bool isLoading = false;
  @action
  setIsLoading(bool value) => isLoading = value;

  @observable
  String code = '';
  @action
  setCode(String value) {
    code = value;
    if (code.length == 4) {
      goToHome();
    }
  }

  @action
  goToHome() async {
    Modular.to.pushNamed('/main');
  }
}
