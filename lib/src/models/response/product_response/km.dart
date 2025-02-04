import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/km.freezed.dart';

part 'gen/km.g.dart';

@unfreezed
class Km with _$Km {
  @HiveType(typeId: 5)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Km({
    @HiveField(0) String? name,
  }) = _Km;

  factory Km.fromJson(Map<String, dynamic> json) => _$KmFromJson(json);
}
