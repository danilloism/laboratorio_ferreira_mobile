import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/data/models/models.dart';

part '../../../../../generated/src/features/auth/data/models/login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(SenhaInput.pure()) SenhaInput senha,
    @Default(FormzStatus.pure) FormzStatus status,
    String? error,
  }) = _Login;
}
