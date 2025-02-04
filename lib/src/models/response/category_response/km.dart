import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/km.freezed.dart';

part 'gen/km.g.dart';

@freezed
class Km with _$Km {
  factory Km({
    String? name,
    String? message,
  }) = _Km;

  factory Km.fromJson(Map<String, dynamic> json) => _$KmFromJson(json);
}
