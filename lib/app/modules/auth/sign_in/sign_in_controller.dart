import 'package:mobx/mobx.dart';

part 'sign_in_controller.g.dart';

class SignInController = _SignInControllerBase with _$SignInController;

abstract class _SignInControllerBase with Store {
  @observable
  bool isLoading = false;
  @action
  setIsLoading(bool value) => isLoading = value;

  @action
  signIn(String phoneNumber) async {
    setIsLoading(true);
    await Future.delayed(Duration(milliseconds: 500));
    setIsLoading(false);
  }
}
