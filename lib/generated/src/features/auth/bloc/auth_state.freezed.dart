// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../../src/features/auth/bloc/auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Session session) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(Object error, dynamic extra) error,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthError value) error,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$LoggedInCopyWith<$Res> {
  factory _$$LoggedInCopyWith(
          _$LoggedIn value, $Res Function(_$LoggedIn) then) =
      __$$LoggedInCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$LoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LoggedInCopyWith<$Res> {
  __$$LoggedInCopyWithImpl(_$LoggedIn _value, $Res Function(_$LoggedIn) _then)
      : super(_value, (v) => _then(v as _$LoggedIn));

  @override
  _$LoggedIn get _value => super._value as _$LoggedIn;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$LoggedIn(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }

  @override
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$LoggedIn extends LoggedIn {
  const _$LoggedIn({required this.session}) : super._();

  @override
  final Session session;

  @override
  String toString() {
    return 'AuthState.loggedIn(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedIn &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      __$$LoggedInCopyWithImpl<_$LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Session session) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(Object error, dynamic extra) error,
    required TResult Function() unknown,
  }) {
    return loggedIn(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
  }) {
    return loggedIn?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthError value) error,
    required TResult Function(Unknown value) unknown,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn extends AuthState {
  const factory LoggedIn({required final Session session}) = _$LoggedIn;
  const LoggedIn._() : super._();

  Session get session;
  @JsonKey(ignore: true)
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutCopyWith<$Res> {
  factory _$$LoggedOutCopyWith(
          _$LoggedOut value, $Res Function(_$LoggedOut) then) =
      __$$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LoggedOutCopyWith<$Res> {
  __$$LoggedOutCopyWithImpl(
      _$LoggedOut _value, $Res Function(_$LoggedOut) _then)
      : super(_value, (v) => _then(v as _$LoggedOut));

  @override
  _$LoggedOut get _value => super._value as _$LoggedOut;
}

/// @nodoc

class _$LoggedOut extends LoggedOut {
  const _$LoggedOut() : super._();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Session session) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(Object error, dynamic extra) error,
    required TResult Function() unknown,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthError value) error,
    required TResult Function(Unknown value) unknown,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut extends AuthState {
  const factory LoggedOut() = _$LoggedOut;
  const LoggedOut._() : super._();
}

/// @nodoc
abstract class _$$AuthErrorCopyWith<$Res> {
  factory _$$AuthErrorCopyWith(
          _$AuthError value, $Res Function(_$AuthError) then) =
      __$$AuthErrorCopyWithImpl<$Res>;

  $Res call({Object error, dynamic extra});
}

/// @nodoc
class __$$AuthErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthErrorCopyWith<$Res> {
  __$$AuthErrorCopyWithImpl(
      _$AuthError _value, $Res Function(_$AuthError) _then)
      : super(_value, (v) => _then(v as _$AuthError));

  @override
  _$AuthError get _value => super._value as _$AuthError;

  @override
  $Res call({
    Object? error = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$AuthError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AuthError extends AuthError {
  const _$AuthError({required this.error, this.extra}) : super._();

  @override
  final Object error;
  @override
  final dynamic extra;

  @override
  String toString() {
    return 'AuthState.error(error: $error, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.extra, extra));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(extra));

  @JsonKey(ignore: true)
  @override
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      __$$AuthErrorCopyWithImpl<_$AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Session session) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(Object error, dynamic extra) error,
    required TResult Function() unknown,
  }) {
    return error(this.error, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
  }) {
    return error?.call(this.error, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthError value) error,
    required TResult Function(Unknown value) unknown,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthError extends AuthState {
  const factory AuthError({required final Object error, final dynamic extra}) =
      _$AuthError;

  const AuthError._() : super._();

  Object get error;

  dynamic get extra;

  @JsonKey(ignore: true)
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;
}

/// @nodoc

class _$Unknown extends Unknown {
  const _$Unknown() : super._();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Session session) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(Object error, dynamic extra) error,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Session session)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(Object error, dynamic extra)? error,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthError value) error,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthError value)? error,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown extends AuthState {
  const factory Unknown() = _$Unknown;
  const Unknown._() : super._();
}
