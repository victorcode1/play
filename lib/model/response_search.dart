import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_search.freezed.dart';
part 'response_search.g.dart';

@freezed
class ResponseSearch with _$ResponseSearch {
  const factory ResponseSearch({
    String? kind,
    String? etag,
    String? nextPageToken,
    String? regionCode,
    PageInfo? pageInfo,
    List<Items>? items,
  }) = _ResponseSearch;

  factory ResponseSearch.fromJson(Map<String, dynamic> json) => _$ResponseSearchFromJson(json);
}

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    int? totalResults,
    int? resultsPerPage,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) => _$PageInfoFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    String? kind,
    String? etag,
    Id? id,
    Snippet? snippet,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Id with _$Id {
  const factory Id({
    String? kind,
    String? videoId,
  }) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    String? publishedAt,
    String? channelId,
    String? title,
    String? description,
    Thumbnails? thumbnails,
    String? channelTitle,
    String? liveBroadcastContent,
    String? publishTime,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) => _$SnippetFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    Default? default_,
    Default? medium,
    Default? high,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) => _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    String? url,
    int? width,
    int? height,
  }) = _Default;

  factory Default.fromJson(Map<String, dynamic> json) => _$DefaultFromJson(json);
}