// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetError value) internetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InternetError value)? internetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetError value)? internetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailuresCopyWith<$Res> {
  factory $ApiFailuresCopyWith(
          ApiFailures value, $Res Function(ApiFailures) then) =
      _$ApiFailuresCopyWithImpl<$Res, ApiFailures>;
}

/// @nodoc
class _$ApiFailuresCopyWithImpl<$Res, $Val extends ApiFailures>
    implements $ApiFailuresCopyWith<$Res> {
  _$ApiFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InternetErrorImplCopyWith<$Res> {
  factory _$$InternetErrorImplCopyWith(
          _$InternetErrorImpl value, $Res Function(_$InternetErrorImpl) then) =
      __$$InternetErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternetErrorImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$InternetErrorImpl>
    implements _$$InternetErrorImplCopyWith<$Res> {
  __$$InternetErrorImplCopyWithImpl(
      _$InternetErrorImpl _value, $Res Function(_$InternetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InternetErrorImpl
    with DiagnosticableTreeMixin
    implements InternetError {
  _$InternetErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailures.internetError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ApiFailures.internetError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InternetErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internetError,
  }) {
    return internetError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internetError,
  }) {
    return internetError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internetError,
    required TResult orElse(),
  }) {
    if (internetError != null) {
      return internetError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetError value) internetError,
  }) {
    return internetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InternetError value)? internetError,
  }) {
    return internetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetError value)? internetError,
    required TResult orElse(),
  }) {
    if (internetError != null) {
      return internetError(this);
    }
    return orElse();
  }
}

abstract class InternetError implements ApiFailures {
  factory InternetError() = _$InternetErrorImpl;
}
