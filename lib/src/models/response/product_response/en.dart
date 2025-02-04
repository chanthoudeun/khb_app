import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/en.freezed.dart';

part 'gen/en.g.dart';

@unfreezed
class En with _$En {
  @HiveType(typeId: 4)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory En({
    @HiveField(0) String? name,
  }) = _En;

  factory En.fromJson(Map<String, dynamic> json) => _$EnFromJson(json);
}
