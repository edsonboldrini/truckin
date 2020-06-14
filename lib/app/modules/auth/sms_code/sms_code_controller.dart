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
  setCode(String value) => code = value;

  @computed
  bool get isFormValid => code.length == 4;

  @action
  signIn() async {
    setIsLoading(true);
    await Future.delayed(Duration(milliseconds: 500));
    setIsLoading(false);
  }
}
