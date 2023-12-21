import 'package:json_annotation/json_annotation.dart';
import 'package:third/models/item_model.dart';

part 'repository_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Repository {
  int? totalCount;
  bool? incompleteResults;
  List<Item>? items;

  Repository({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}
