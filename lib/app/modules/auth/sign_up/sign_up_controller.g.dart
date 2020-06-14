// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on _SignUpControllerBase, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignUpControllerBase.isFormValid'))
          .value;

  final _$isLoadingAtom = Atom(name: '_SignUpControllerBase.isLoading');

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

  final _$phoneAtom = Atom(name: '_SignUpControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$nameAtom = Atom(name: '_SignUpControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$signUpAsyncAction = AsyncAction('_SignUpControllerBase.signUp');

  @override
  Future signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  final _$_SignUpControllerBaseActionController =
      ActionController(name: '_SignUpControllerBase');

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPhone(String value) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
phone: ${phone},
name: ${name},
isFormValid: ${isFormValid}
    ''';
  }
}
