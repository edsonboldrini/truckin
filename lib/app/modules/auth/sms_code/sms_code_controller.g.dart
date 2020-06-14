// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_code_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SmsCodeController on _SmsCodeControllerBase, Store {
  final _$valueAtom = Atom(name: '_SmsCodeControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_SmsCodeControllerBaseActionController =
      ActionController(name: '_SmsCodeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SmsCodeControllerBaseActionController.startAction(
        name: '_SmsCodeControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SmsCodeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
