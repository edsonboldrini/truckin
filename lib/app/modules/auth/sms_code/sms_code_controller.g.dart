// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_code_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SmsCodeController on _SmsCodeControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_SmsCodeControllerBase.isLoading');

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

  final _$codeAtom = Atom(name: '_SmsCodeControllerBase.code');

  @override
  String get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  final _$goToHomeAsyncAction = AsyncAction('_SmsCodeControllerBase.goToHome');

  @override
  Future goToHome() {
    return _$goToHomeAsyncAction.run(() => super.goToHome());
  }

  final _$_SmsCodeControllerBaseActionController =
      ActionController(name: '_SmsCodeControllerBase');

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$_SmsCodeControllerBaseActionController.startAction(
        name: '_SmsCodeControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_SmsCodeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCode(String value) {
    final _$actionInfo = _$_SmsCodeControllerBaseActionController.startAction(
        name: '_SmsCodeControllerBase.setCode');
    try {
      return super.setCode(value);
    } finally {
      _$_SmsCodeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
code: ${code}
    ''';
  }
}
