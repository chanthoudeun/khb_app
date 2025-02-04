import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/metadata.freezed.dart';

part 'gen/metadata.g.dart';

@freezed
class Metadata with _$Metadata {
  factory Metadata({
    int? total,
    int? limit,
    int? offset,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
