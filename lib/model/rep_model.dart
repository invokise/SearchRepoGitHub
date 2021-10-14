class SearchRepos {
  int? totalCount;
  bool? incompleteResults;
  List<Items>? items;

  SearchRepos({this.totalCount, this.incompleteResults, this.items});

  SearchRepos.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'] as int?;
    incompleteResults = json['incomplete_results'] as bool?;
    if (json['items'] != null) {
      items = List<Items>.empty(growable: true);
      for (final item in json['items']) {
        items!.add(Items.fromJson(item as Map<String, dynamic>));
      }
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['total_count'] = totalCount;
    data['incomplete_results'] = incompleteResults;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
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

  Items({
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

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
    id : json['id'] as int?,
    nodeId : json['node_id'] as String?,
    name : json['name'] as String?,
    fullName : json['full_name'] as String?,
    owner : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    private : json['private'] as bool,
    htmlUrl : json['html_url'] as String?,
    description : json['description'] as String?,
    fork : json['fork'] as bool?,
    url : json['url'] as String?,
    createdAt : json['created_at'] as String?,
    updatedAt : json['updated_at'] as String?,
    pushedAt : json['pushed_at'] as String?,
    homepage : json['homepage'] as String?,
    size : json['size'] as int?,
    stargazersCount : json['stargazers_count'] as int?,
    watchersCount : json['watchers_count'] as int?,
    language : json['language'] as String?,
    forksCount : json['forks_count'] as int?,
    openIssuesCount : json['open_issues_count'] as int?,
    masterBranch : json['master_branch'] as String?,
    defaultBranch : json['default_branch'] as String?,
    score : json['score'] as double?,
    archiveUrl : json['archive_url'] as String?,
    assigneesUrl : json['assignees_url'] as String?,
    blobsUrl : json['blobs_url'] as String?,
    branchesUrl : json['branches_url'] as String?,
    collaboratorsUrl : json['collaborators_url'] as String?,
    commentsUrl : json['comments_url'] as String?,
    commitsUrl : json['commits_url'] as String?,
    compareUrl : json['compare_url'] as String?,
    contentsUrl : json['contents_url'] as String?,
    contributorsUrl : json['contributors_url'] as String?,
    deploymentsUrl : json['deployments_url'] as String?,
    downloadsUrl : json['downloads_url'] as String?,
    eventsUrl : json['events_url'] as String?,
    forksUrl : json['forks_url'] as String?,
    gitCommitsUrl : json['git_commits_url'] as String?,
    gitRefsUrl : json['git_refs_url'] as String?,
    gitTagsUrl : json['git_tags_url'] as String?,
    gitUrl : json['git_url'] as String?,
    issueCommentUrl : json['issue_comment_url'] as String?,
    issueEventsUrl : json['issue_events_url'] as String?,
    issuesUrl : json['issues_url'] as String?,
    keysUrl : json['keys_url'] as String?,
    labelsUrl : json['labels_url'] as String?,
    languagesUrl : json['languages_url'] as String?,
    mergesUrl : json['merges_url'] as String?,
    milestonesUrl : json['milestones_url'] as String?,
    notificationsUrl : json['notifications_url'] as String?,
    pullsUrl : json['pulls_url'] as String?,
    releasesUrl : json['releases_url'] as String?,
    sshUrl : json['ssh_url'] as String?,
    stargazersUrl : json['stargazers_url'] as String?,
    statusesUrl : json['statuses_url'] as String?,
    subscribersUrl : json['subscribers_url'] as String?,
    subscriptionUrl : json['subscription_url'] as String?,
    tagsUrl : json['tags_url'] as String?,
    teamsUrl : json['teams_url'] as String?,
    treesUrl : json['trees_url'] as String?,
    cloneUrl : json['clone_url'] as String?,
    mirrorUrl : json['mirror_url'] as String?,
    hooksUrl : json['hooks_url'] as String?,
    svnUrl : json['svn_url'] as String?,
    forks : json['forks'] as int?,
    openIssues : json['open_issues'] as int?,
    watchers : json['watchers'] as int?,
    hasIssues : json['has_issues'] as bool?,
    hasProjects : json['has_projects'] as bool?,
    hasPages : json['has_pages'] as bool?,
    hasWiki : json['has_wiki'] as bool?,
    hasDownloads : json['has_downloads'] as bool?,
    archived : json['archived'] as bool?,
    disabled : json['disabled'] as bool?,
    //license: License.fromJson(json['license'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['node_id'] = nodeId;
    data['name'] = name;
    data['full_name'] = fullName;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['private'] = private;
    data['html_url'] = htmlUrl;
    data['description'] = description;
    data['fork'] = fork;
    data['url'] = url;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pushed_at'] = pushedAt;
    data['homepage'] = homepage;
    data['size'] = size;
    data['stargazers_count'] = stargazersCount;
    data['watchers_count'] = watchersCount;
    data['language'] = language;
    data['forks_count'] = forksCount;
    data['open_issues_count'] = openIssuesCount;
    data['master_branch'] = masterBranch;
    data['default_branch'] = defaultBranch;
    data['score'] = score;
    data['archive_url'] = archiveUrl;
    data['assignees_url'] = assigneesUrl;
    data['blobs_url'] = blobsUrl;
    data['branches_url'] = branchesUrl;
    data['collaborators_url'] = collaboratorsUrl;
    data['comments_url'] = commentsUrl;
    data['commits_url'] = commitsUrl;
    data['compare_url'] = compareUrl;
    data['contents_url'] = contentsUrl;
    data['contributors_url'] = contributorsUrl;
    data['deployments_url'] = deploymentsUrl;
    data['downloads_url'] = downloadsUrl;
    data['events_url'] = eventsUrl;
    data['forks_url'] = forksUrl;
    data['git_commits_url'] = gitCommitsUrl;
    data['git_refs_url'] = gitRefsUrl;
    data['git_tags_url'] = gitTagsUrl;
    data['git_url'] = gitUrl;
    data['issue_comment_url'] = issueCommentUrl;
    data['issue_events_url'] = issueEventsUrl;
    data['issues_url'] = issuesUrl;
    data['keys_url'] = keysUrl;
    data['labels_url'] = labelsUrl;
    data['languages_url'] = languagesUrl;
    data['merges_url'] = mergesUrl;
    data['milestones_url'] = milestonesUrl;
    data['notifications_url'] = notificationsUrl;
    data['pulls_url'] = pullsUrl;
    data['releases_url'] = releasesUrl;
    data['ssh_url'] = sshUrl;
    data['stargazers_url'] = stargazersUrl;
    data['statuses_url'] = statusesUrl;
    data['subscribers_url'] = subscribersUrl;
    data['subscription_url'] = subscriptionUrl;
    data['tags_url'] = tagsUrl;
    data['teams_url'] = teamsUrl;
    data['trees_url'] = treesUrl;
    data['clone_url'] = cloneUrl;
    data['mirror_url'] = mirrorUrl;
    data['hooks_url'] = hooksUrl;
    data['svn_url'] = svnUrl;
    data['forks'] = forks;
    data['open_issues'] = openIssues;
    data['watchers'] = watchers;
    data['has_issues'] = hasIssues;
    data['has_projects'] = hasProjects;
    data['has_pages'] = hasPages;
    data['has_wiki'] = hasWiki;
    data['has_downloads'] = hasDownloads;
    data['archived'] = archived;
    data['disabled'] = disabled;
    if (license != null) {
      data['license'] = license!.toJson();
    }
    return data;
  }
}

class Owner {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? receivedEventsUrl;
  String? type;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  bool? siteAdmin;

  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.receivedEventsUrl,
    this.type,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.siteAdmin,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
    login : json['login'] as String?,
    id : json['id'] as int?,
    nodeId : json['node_id'] as String?,
    avatarUrl : json['avatar_url'] as String?,
    gravatarId : json['gravatar_id'] as String?,
    url : json['url'] as String?,
    receivedEventsUrl : json['received_events_url'] as String?,
    type : json['type'] as String?,
    htmlUrl : json['html_url'] as String?,
    followersUrl : json['followers_url'] as String?,
    followingUrl : json['following_url'] as String?,
    gistsUrl : json['gists_url'] as String?,
    starredUrl : json['starred_url'] as String?,
    subscriptionsUrl : json['subscriptions_url'] as String?,
    organizationsUrl : json['organizations_url'] as String?,
    reposUrl : json['repos_url'] as String?,
    eventsUrl : json['events_url'] as String?,
    siteAdmin : json['site_admin'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['login'] = login;
    data['id'] = id;
    data['node_id'] = nodeId;
    data['avatar_url'] = avatarUrl;
    data['gravatar_id'] = gravatarId;
    data['url'] = url;
    data['received_events_url'] = receivedEventsUrl;
    data['type'] = type;
    data['html_url'] = htmlUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['starred_url'] = starredUrl;
    data['subscriptions_url'] = subscriptionsUrl;
    data['organizations_url'] = organizationsUrl;
    data['repos_url'] = reposUrl;
    data['events_url'] = eventsUrl;
    data['site_admin'] = siteAdmin;
    return data;
  }
}

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

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      key : json['key'] as String?,
      name : json['name'] as String?,
      url : json['url'] as String?,
      spdxId : json['spdx_id'] as String?,
      nodeId : json['node_id'] as String?,
      htmlUrl : json['html_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['name'] = name;
    data['url'] = url;
    data['spdx_id'] = spdxId;
    data['node_id'] = nodeId;
    data['html_url'] = htmlUrl;
    return data;
  }
}
