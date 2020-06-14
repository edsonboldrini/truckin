import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'sign_in_controller.g.dart';

class SignInController = _SignInControllerBase with _$SignInController;

abstract class _SignInControllerBase with Store {
  @observable
  bool isLoading = false;
  @action
  setIsLoading(bool value) => isLoading = value;

  @observable
  String phone = '';
  @action
  setPhone(String value) => phone = value;

  @computed
  bool get isFormValid => phone.length == 15;

  @action
  signIn() async {
    setIsLoading(true);
    await Future.delayed(Duration(milliseconds: 500));
    setIsLoading(false);
    Modular.to.pushNamed('/auth/sms_code');
  }
}
