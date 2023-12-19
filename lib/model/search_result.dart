import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    ResponseContext? responseContext,
    List<SearchResultContent>? contents,
    String? trackingParams,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
}

@freezed
class SearchResultContent with _$SearchResultContent {
  factory SearchResultContent({
    SearchSuggestionsSectionRenderer? searchSuggestionsSectionRenderer,
  }) = _SearchResultContent;

  factory SearchResultContent.fromJson(Map<String, dynamic> json) => _$SearchResultContentFromJson(json);
}

@freezed
class SearchSuggestionsSectionRenderer with _$SearchSuggestionsSectionRenderer {
  factory SearchSuggestionsSectionRenderer({
    List<SearchSuggestionsSectionRendererContent>? contents,
  }) = _SearchSuggestionsSectionRenderer;

  factory SearchSuggestionsSectionRenderer.fromJson(Map<String, dynamic> json) => _$SearchSuggestionsSectionRendererFromJson(json);
}

@freezed
class SearchSuggestionsSectionRendererContent with _$SearchSuggestionsSectionRendererContent {
  factory SearchSuggestionsSectionRendererContent({
    SearchSuggestionRenderer? searchSuggestionRenderer,
  }) = _SearchSuggestionsSectionRendererContent;

  factory SearchSuggestionsSectionRendererContent.fromJson(Map<String, dynamic> json) => _$SearchSuggestionsSectionRendererContentFromJson(json);
}

@freezed
class SearchSuggestionRenderer with _$SearchSuggestionRenderer {
  factory SearchSuggestionRenderer({
    Suggestion? suggestion,
    NavigationEndpoint? navigationEndpoint,
    String? trackingParams,
    Icon? icon,
  }) = _SearchSuggestionRenderer;

  factory SearchSuggestionRenderer.fromJson(Map<String, dynamic> json) => _$SearchSuggestionRendererFromJson(json);
}

@freezed
class Suggestion with _$Suggestion {
  factory Suggestion({
    List<Run>? runs,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) => _$SuggestionFromJson(json);
}

@freezed
class Run with _$Run {
  factory Run({
    String? text,
    bool? bold,
  }) = _Run;

  factory Run.fromJson(Map<String, dynamic> json) => _$RunFromJson(json);
}

@freezed
class NavigationEndpoint with _$NavigationEndpoint {
  factory NavigationEndpoint({
    String? clickTrackingParams,
    SearchEndpoint? searchEndpoint,
  }) = _NavigationEndpoint;

  factory NavigationEndpoint.fromJson(Map<String, dynamic> json) => _$NavigationEndpointFromJson(json);
}

@freezed
class SearchEndpoint with _$SearchEndpoint {
  factory SearchEndpoint({
    String? query,
  }) = _SearchEndpoint;

  factory SearchEndpoint.fromJson(Map<String, dynamic> json) => _$SearchEndpointFromJson(json);
}

@freezed
class Icon with _$Icon {
  factory Icon({
    String? iconType,
  }) = _Icon;

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);
}

@freezed
class ResponseContext with _$ResponseContext {
  factory ResponseContext({
    String? visitorData,
    List<ServiceTrackingParam>? serviceTrackingParams,
  }) = _ResponseContext;

  factory ResponseContext.fromJson(Map<String, dynamic> json) => _$ResponseContextFromJson(json);
}

@freezed
class ServiceTrackingParam with _$ServiceTrackingParam {
  factory ServiceTrackingParam({
    String? service,
    List<Param>? params,
  }) = _ServiceTrackingParam;

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) => _$ServiceTrackingParamFromJson(json);
}

@freezed
class Param with _$Param {
  factory Param({
    String? key,
    String? value,
  }) = _Param;

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}