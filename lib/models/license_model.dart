import 'package:json_annotation/json_annotation.dart';

part 'license_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class License {
  String? key;
  String? name;
  String? url;
  String? spdxId;
  String? nodeId;
  String? htmlUrl;

  License({
    this.key,
    this.name,
    this.url,
    this.spdxId,
    this.nodeId,
    this.htmlUrl,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
