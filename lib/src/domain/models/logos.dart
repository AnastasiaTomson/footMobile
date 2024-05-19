import 'package:freezed_annotation/freezed_annotation.dart';

part 'logos.freezed.dart';
part 'logos.g.dart';

@freezed
class Logos with _$Logos {
  factory Logos({
    required String light,
    required String dark
  }) = _Logos;

  factory Logos.fromJson(Map<String, dynamic> json) => _$LogosFromJson(json);
}
