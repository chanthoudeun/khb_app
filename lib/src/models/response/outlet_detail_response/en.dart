import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/en.freezed.dart';

part 'gen/en.g.dart';

@unfreezed
class En with _$En {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory En({
    String? name,
  }) = _En;

  factory En.fromJson(Map<String, dynamic> json) => _$EnFromJson(json);
}
