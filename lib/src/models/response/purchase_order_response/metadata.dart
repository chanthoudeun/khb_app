import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/metadata.freezed.dart';

part 'gen/metadata.g.dart';

@unfreezed
class Metadata with _$Metadata {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Metadata({
    int? total,
    int? limit,
    int? offset,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
