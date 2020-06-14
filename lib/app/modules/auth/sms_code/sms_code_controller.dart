import 'package:mobx/mobx.dart';

part 'sms_code_controller.g.dart';

class SmsCodeController = _SmsCodeControllerBase with _$SmsCodeController;

abstract class _SmsCodeControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
