import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/location.freezed.dart';

part 'gen/location.g.dart';

@unfreezed
class Location with _$Location {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Location({
    String? type,
    List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
