import 'package:json_annotation/json_annotation.dart';
import 'package:third/models/license_model.dart';
import 'package:third/models/owner_model.dart';

part 'item_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Item {
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  Owner? owner;
  bool? private;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? homepage;
  int? size;
  int? stargazersCount;
  int? watchersCount;
  String? language;
  int? forksCount;
  int? openIssuesCount;
  String? masterBranch;
  String? defaultBranch;
  double? score;
  String? archiveUrl;
  String? assigneesUrl;
  String? blobsUrl;
  String? branchesUrl;
  String? collaboratorsUrl;
  String? commentsUrl;
  String? commitsUrl;
  String? compareUrl;
  String? contentsUrl;
  String? contributorsUrl;
  String? deploymentsUrl;
  String? downloadsUrl;
  String? eventsUrl;
  String? forksUrl;
  String? gitCommitsUrl;
  String? gitRefsUrl;
  String? gitTagsUrl;
  String? gitUrl;
  String? issueCommentUrl;
  String? issueEventsUrl;
  String? issuesUrl;
  String? keysUrl;
  String? labelsUrl;
  String? languagesUrl;
  String? mergesUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? pullsUrl;
  String? releasesUrl;
  String? sshUrl;
  String? stargazersUrl;
  String? statusesUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? tagsUrl;
  String? teamsUrl;
  String? treesUrl;
  String? cloneUrl;
  String? mirrorUrl;
  String? hooksUrl;
  String? svnUrl;
  int? forks;
  int? openIssues;
  int? watchers;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasPages;
  bool? hasWiki;
  bool? hasDownloads;
  bool? archived;
  bool? disabled;
  License? license;

  Item({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.private,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.forksCount,
    this.openIssuesCount,
    this.masterBranch,
    this.defaultBranch,
    this.score,
    this.archiveUrl,
    this.assigneesUrl,
    this.blobsUrl,
    this.branchesUrl,
    this.collaboratorsUrl,
    this.commentsUrl,
    this.commitsUrl,
    this.compareUrl,
    this.contentsUrl,
    this.contributorsUrl,
    this.deploymentsUrl,
    this.downloadsUrl,
    this.eventsUrl,
    this.forksUrl,
    this.gitCommitsUrl,
    this.gitRefsUrl,
    this.gitTagsUrl,
    this.gitUrl,
    this.issueCommentUrl,
    this.issueEventsUrl,
    this.issuesUrl,
    this.keysUrl,
    this.labelsUrl,
    this.languagesUrl,
    this.mergesUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.pullsUrl,
    this.releasesUrl,
    this.sshUrl,
    this.stargazersUrl,
    this.statusesUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.tagsUrl,
    this.teamsUrl,
    this.treesUrl,
    this.cloneUrl,
    this.mirrorUrl,
    this.hooksUrl,
    this.svnUrl,
    this.forks,
    this.openIssues,
    this.watchers,
    this.hasIssues,
    this.hasProjects,
    this.hasPages,
    this.hasWiki,
    this.hasDownloads,
    this.archived,
    this.disabled,
    this.license,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
