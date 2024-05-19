// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Standing _$StandingFromJson(Map<String, dynamic> json) {
  return _Standing.fromJson(json);
}

/// @nodoc
mixin _$Standing {
  String get teamName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int get gamesPlayed => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get losses => throw _privateConstructorUsedError;
  int get draws => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingCopyWith<Standing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingCopyWith<$Res> {
  factory $StandingCopyWith(Standing value, $Res Function(Standing) then) =
      _$StandingCopyWithImpl<$Res, Standing>;
  @useResult
  $Res call(
      {String teamName,
      String? logo,
      String? color,
      int gamesPlayed,
      int wins,
      int losses,
      int draws,
      int points});
}

/// @nodoc
class _$StandingCopyWithImpl<$Res, $Val extends Standing>
    implements $StandingCopyWith<$Res> {
  _$StandingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? logo = freezed,
    Object? color = freezed,
    Object? gamesPlayed = null,
    Object? wins = null,
    Object? losses = null,
    Object? draws = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesPlayed: null == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: null == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingImplCopyWith<$Res>
    implements $StandingCopyWith<$Res> {
  factory _$$StandingImplCopyWith(
          _$StandingImpl value, $Res Function(_$StandingImpl) then) =
      __$$StandingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String teamName,
      String? logo,
      String? color,
      int gamesPlayed,
      int wins,
      int losses,
      int draws,
      int points});
}

/// @nodoc
class __$$StandingImplCopyWithImpl<$Res>
    extends _$StandingCopyWithImpl<$Res, _$StandingImpl>
    implements _$$StandingImplCopyWith<$Res> {
  __$$StandingImplCopyWithImpl(
      _$StandingImpl _value, $Res Function(_$StandingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? logo = freezed,
    Object? color = freezed,
    Object? gamesPlayed = null,
    Object? wins = null,
    Object? losses = null,
    Object? draws = null,
    Object? points = null,
  }) {
    return _then(_$StandingImpl(
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesPlayed: null == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: null == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingImpl implements _Standing {
  _$StandingImpl(
      {required this.teamName,
      this.logo,
      this.color,
      required this.gamesPlayed,
      required this.wins,
      required this.losses,
      required this.draws,
      required this.points});

  factory _$StandingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingImplFromJson(json);

  @override
  final String teamName;
  @override
  final String? logo;
  @override
  final String? color;
  @override
  final int gamesPlayed;
  @override
  final int wins;
  @override
  final int losses;
  @override
  final int draws;
  @override
  final int points;

  @override
  String toString() {
    return 'Standing(teamName: $teamName, logo: $logo, color: $color, gamesPlayed: $gamesPlayed, wins: $wins, losses: $losses, draws: $draws, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingImpl &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gamesPlayed, gamesPlayed) ||
                other.gamesPlayed == gamesPlayed) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.losses, losses) || other.losses == losses) &&
            (identical(other.draws, draws) || other.draws == draws) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamName, logo, color,
      gamesPlayed, wins, losses, draws, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      __$$StandingImplCopyWithImpl<_$StandingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingImplToJson(
      this,
    );
  }
}

abstract class _Standing implements Standing {
  factory _Standing(
      {required final String teamName,
      final String? logo,
      final String? color,
      required final int gamesPlayed,
      required final int wins,
      required final int losses,
      required final int draws,
      required final int points}) = _$StandingImpl;

  factory _Standing.fromJson(Map<String, dynamic> json) =
      _$StandingImpl.fromJson;

  @override
  String get teamName;
  @override
  String? get logo;
  @override
  String? get color;
  @override
  int get gamesPlayed;
  @override
  int get wins;
  @override
  int get losses;
  @override
  int get draws;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
