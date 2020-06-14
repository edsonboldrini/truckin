import 'package:mobx/mobx.dart';

part 'sign_up_controller.g.dart';

class SignUpController = _SignUpControllerBase with _$SignUpController;

abstract class _SignUpControllerBase with Store {
  @observable
  bool isLoading = false;
  @action
  setIsLoading(bool value) => isLoading = value;

  @observable
  String phone = '';
  @action
  setPhone(String value) => phone = value;

  @observable
  String name = '';
  @action
  setName(String value) => name = value;

  @computed
  bool get isFormValid => phone.length == 15;

  @action
  signUp() async {
    setIsLoading(true);
    await Future.delayed(Duration(milliseconds: 500));
    setIsLoading(false);
  }
}
