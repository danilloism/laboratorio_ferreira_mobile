// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../../src/core/data/models/api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponse<T> {
  bool get sucesso => throw _privateConstructorUsedError;
  T? get dados => throw _privateConstructorUsedError;
  String? get mensagem => throw _privateConstructorUsedError;
  dynamic get erro => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res>;
  $Res call({bool sucesso, T? dados, String? mensagem, dynamic erro});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<T>) _then;

  @override
  $Res call({
    Object? sucesso = freezed,
    Object? dados = freezed,
    Object? mensagem = freezed,
    Object? erro = freezed,
  }) {
    return _then(_value.copyWith(
      sucesso: sucesso == freezed
          ? _value.sucesso
          : sucesso // ignore: cast_nullable_to_non_nullable
              as bool,
      dados: dados == freezed
          ? _value.dados
          : dados // ignore: cast_nullable_to_non_nullable
              as T?,
      mensagem: mensagem == freezed
          ? _value.mensagem
          : mensagem // ignore: cast_nullable_to_non_nullable
              as String?,
      erro: erro == freezed
          ? _value.erro
          : erro // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiResponseCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$_ApiResponseCopyWith(
          _$_ApiResponse<T> value, $Res Function(_$_ApiResponse<T>) then) =
      __$$_ApiResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({bool sucesso, T? dados, String? mensagem, dynamic erro});
}

/// @nodoc
class __$$_ApiResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements _$$_ApiResponseCopyWith<T, $Res> {
  __$$_ApiResponseCopyWithImpl(
      _$_ApiResponse<T> _value, $Res Function(_$_ApiResponse<T>) _then)
      : super(_value, (v) => _then(v as _$_ApiResponse<T>));

  @override
  _$_ApiResponse<T> get _value => super._value as _$_ApiResponse<T>;

  @override
  $Res call({
    Object? sucesso = freezed,
    Object? dados = freezed,
    Object? mensagem = freezed,
    Object? erro = freezed,
  }) {
    return _then(_$_ApiResponse<T>(
      sucesso: sucesso == freezed
          ? _value.sucesso
          : sucesso // ignore: cast_nullable_to_non_nullable
              as bool,
      dados: dados == freezed
          ? _value.dados
          : dados // ignore: cast_nullable_to_non_nullable
              as T?,
      mensagem: mensagem == freezed
          ? _value.mensagem
          : mensagem // ignore: cast_nullable_to_non_nullable
              as String?,
      erro: erro == freezed
          ? _value.erro
          : erro // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class _$_ApiResponse<T> implements _ApiResponse<T> {
  const _$_ApiResponse(
      {required this.sucesso, this.dados, this.mensagem, this.erro});

  factory _$_ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ApiResponseFromJson(json, fromJsonT);

  @override
  final bool sucesso;
  @override
  final T? dados;
  @override
  final String? mensagem;
  @override
  final dynamic erro;

  @override
  String toString() {
    return 'ApiResponse<$T>(sucesso: $sucesso, dados: $dados, mensagem: $mensagem, erro: $erro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse<T> &&
            const DeepCollectionEquality().equals(other.sucesso, sucesso) &&
            const DeepCollectionEquality().equals(other.dados, dados) &&
            const DeepCollectionEquality().equals(other.mensagem, mensagem) &&
            const DeepCollectionEquality().equals(other.erro, erro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sucesso),
      const DeepCollectionEquality().hash(dados),
      const DeepCollectionEquality().hash(mensagem),
      const DeepCollectionEquality().hash(erro));

  @JsonKey(ignore: true)
  @override
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      __$$_ApiResponseCopyWithImpl<T, _$_ApiResponse<T>>(this, _$identity);
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {required final bool sucesso,
      final T? dados,
      final String? mensagem,
      final dynamic erro}) = _$_ApiResponse<T>;

  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ApiResponse<T>.fromJson;

  @override
  bool get sucesso;
  @override
  T? get dados;
  @override
  String? get mensagem;
  @override
  dynamic get erro;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<T, _$_ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
