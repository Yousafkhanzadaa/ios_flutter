import 'package:formz/formz.dart';

enum UsernameVlidationError { empty }

class Username extends FormzInput<String, UsernameVlidationError> {
  const Username.pure() : super.pure("");
  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameVlidationError? validator(String value) {
    return value.isNotEmpty == true ? null : UsernameVlidationError.empty;
  }
}
