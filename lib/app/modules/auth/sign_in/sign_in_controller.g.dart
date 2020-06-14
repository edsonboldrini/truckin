// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInController on _SignInControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_SignInControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$signInAsyncAction = AsyncAction('_SignInControllerBase.signIn');

  @override
  Future signIn(String phoneNumber) {
    return _$signInAsyncAction.run(() => super.signIn(phoneNumber));
  }

  final _$_SignInControllerBaseActionController =
      ActionController(name: '_SignInControllerBase');

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$_SignInControllerBaseActionController.startAction(
        name: '_SignInControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_SignInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
