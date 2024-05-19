// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Logos _$LogosFromJson(Map<String, dynamic> json) {
  return _Logos.fromJson(json);
}

/// @nodoc
mixin _$Logos {
  String get light => throw _privateConstructorUsedError;
  String get dark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogosCopyWith<Logos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogosCopyWith<$Res> {
  factory $LogosCopyWith(Logos value, $Res Function(Logos) then) =
      _$LogosCopyWithImpl<$Res, Logos>;
  @useResult
  $Res call({String light, String dark});
}

/// @nodoc
class _$LogosCopyWithImpl<$Res, $Val extends Logos>
    implements $LogosCopyWith<$Res> {
  _$LogosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as String,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogosImplCopyWith<$Res> implements $LogosCopyWith<$Res> {
  factory _$$LogosImplCopyWith(
          _$LogosImpl value, $Res Function(_$LogosImpl) then) =
      __$$LogosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String light, String dark});
}

/// @nodoc
class __$$LogosImplCopyWithImpl<$Res>
    extends _$LogosCopyWithImpl<$Res, _$LogosImpl>
    implements _$$LogosImplCopyWith<$Res> {
  __$$LogosImplCopyWithImpl(
      _$LogosImpl _value, $Res Function(_$LogosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$LogosImpl(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as String,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogosImpl implements _Logos {
  _$LogosImpl({required this.light, required this.dark});

  factory _$LogosImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogosImplFromJson(json);

  @override
  final String light;
  @override
  final String dark;

  @override
  String toString() {
    return 'Logos(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogosImpl &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogosImplCopyWith<_$LogosImpl> get copyWith =>
      __$$LogosImplCopyWithImpl<_$LogosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogosImplToJson(
      this,
    );
  }
}

abstract class _Logos implements Logos {
  factory _Logos({required final String light, required final String dark}) =
      _$LogosImpl;

  factory _Logos.fromJson(Map<String, dynamic> json) = _$LogosImpl.fromJson;

  @override
  String get light;
  @override
  String get dark;
  @override
  @JsonKey(ignore: true)
  _$$LogosImplCopyWith<_$LogosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
