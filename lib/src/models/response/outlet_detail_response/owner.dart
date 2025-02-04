import 'package:freezed_annotation/freezed_annotation.dart';

import 'locales.dart';

part 'gen/owner.freezed.dart';

part 'gen/owner.g.dart';

@unfreezed
class Owner with _$Owner {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Owner({
    int? id,
    String? code,
    @JsonKey(name: 'IDCard') dynamic idCard,
    String? gender,
    dynamic email,
    String? phone,
    String? otherPhone,
    String? name,
    Locales? locales,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
