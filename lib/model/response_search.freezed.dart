// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSearch _$ResponseSearchFromJson(Map<String, dynamic> json) {
  return _ResponseSearch.fromJson(json);
}

/// @nodoc
mixin _$ResponseSearch {
  String? get kind => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;
  String? get regionCode => throw _privateConstructorUsedError;
  PageInfo? get pageInfo => throw _privateConstructorUsedError;
  List<Items>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSearchCopyWith<ResponseSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchCopyWith<$Res> {
  factory $ResponseSearchCopyWith(
          ResponseSearch value, $Res Function(ResponseSearch) then) =
      _$ResponseSearchCopyWithImpl<$Res, ResponseSearch>;
  @useResult
  $Res call(
      {String? kind,
      String? etag,
      String? nextPageToken,
      String? regionCode,
      PageInfo? pageInfo,
      List<Items>? items});

  $PageInfoCopyWith<$Res>? get pageInfo;
}

/// @nodoc
class _$ResponseSearchCopyWithImpl<$Res, $Val extends ResponseSearch>
    implements $ResponseSearchCopyWith<$Res> {
  _$ResponseSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? nextPageToken = freezed,
    Object? regionCode = freezed,
    Object? pageInfo = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      regionCode: freezed == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pageInfo: freezed == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res>? get pageInfo {
    if (_value.pageInfo == null) {
      return null;
    }

    return $PageInfoCopyWith<$Res>(_value.pageInfo!, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSearchImplCopyWith<$Res>
    implements $ResponseSearchCopyWith<$Res> {
  factory _$$ResponseSearchImplCopyWith(_$ResponseSearchImpl value,
          $Res Function(_$ResponseSearchImpl) then) =
      __$$ResponseSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kind,
      String? etag,
      String? nextPageToken,
      String? regionCode,
      PageInfo? pageInfo,
      List<Items>? items});

  @override
  $PageInfoCopyWith<$Res>? get pageInfo;
}

/// @nodoc
class __$$ResponseSearchImplCopyWithImpl<$Res>
    extends _$ResponseSearchCopyWithImpl<$Res, _$ResponseSearchImpl>
    implements _$$ResponseSearchImplCopyWith<$Res> {
  __$$ResponseSearchImplCopyWithImpl(
      _$ResponseSearchImpl _value, $Res Function(_$ResponseSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? nextPageToken = freezed,
    Object? regionCode = freezed,
    Object? pageInfo = freezed,
    Object? items = freezed,
  }) {
    return _then(_$ResponseSearchImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      regionCode: freezed == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      pageInfo: freezed == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSearchImpl implements _ResponseSearch {
  const _$ResponseSearchImpl(
      {this.kind,
      this.etag,
      this.nextPageToken,
      this.regionCode,
      this.pageInfo,
      final List<Items>? items})
      : _items = items;

  factory _$ResponseSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSearchImplFromJson(json);

  @override
  final String? kind;
  @override
  final String? etag;
  @override
  final String? nextPageToken;
  @override
  final String? regionCode;
  @override
  final PageInfo? pageInfo;
  final List<Items>? _items;
  @override
  List<Items>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseSearch(kind: $kind, etag: $etag, nextPageToken: $nextPageToken, regionCode: $regionCode, pageInfo: $pageInfo, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSearchImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            (identical(other.regionCode, regionCode) ||
                other.regionCode == regionCode) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag, nextPageToken,
      regionCode, pageInfo, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSearchImplCopyWith<_$ResponseSearchImpl> get copyWith =>
      __$$ResponseSearchImplCopyWithImpl<_$ResponseSearchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSearchImplToJson(
      this,
    );
  }
}

abstract class _ResponseSearch implements ResponseSearch {
  const factory _ResponseSearch(
      {final String? kind,
      final String? etag,
      final String? nextPageToken,
      final String? regionCode,
      final PageInfo? pageInfo,
      final List<Items>? items}) = _$ResponseSearchImpl;

  factory _ResponseSearch.fromJson(Map<String, dynamic> json) =
      _$ResponseSearchImpl.fromJson;

  @override
  String? get kind;
  @override
  String? get etag;
  @override
  String? get nextPageToken;
  @override
  String? get regionCode;
  @override
  PageInfo? get pageInfo;
  @override
  List<Items>? get items;
  @override
  @JsonKey(ignore: true)
  _$$ResponseSearchImplCopyWith<_$ResponseSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
mixin _$PageInfo {
  int? get totalResults => throw _privateConstructorUsedError;
  int? get resultsPerPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res, PageInfo>;
  @useResult
  $Res call({int? totalResults, int? resultsPerPage});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res, $Val extends PageInfo>
    implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? resultsPerPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      resultsPerPage: freezed == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageInfoImplCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$$PageInfoImplCopyWith(
          _$PageInfoImpl value, $Res Function(_$PageInfoImpl) then) =
      __$$PageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalResults, int? resultsPerPage});
}

/// @nodoc
class __$$PageInfoImplCopyWithImpl<$Res>
    extends _$PageInfoCopyWithImpl<$Res, _$PageInfoImpl>
    implements _$$PageInfoImplCopyWith<$Res> {
  __$$PageInfoImplCopyWithImpl(
      _$PageInfoImpl _value, $Res Function(_$PageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? resultsPerPage = freezed,
  }) {
    return _then(_$PageInfoImpl(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      resultsPerPage: freezed == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageInfoImpl implements _PageInfo {
  const _$PageInfoImpl({this.totalResults, this.resultsPerPage});

  factory _$PageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfoImplFromJson(json);

  @override
  final int? totalResults;
  @override
  final int? resultsPerPage;

  @override
  String toString() {
    return 'PageInfo(totalResults: $totalResults, resultsPerPage: $resultsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfoImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.resultsPerPage, resultsPerPage) ||
                other.resultsPerPage == resultsPerPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, resultsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      __$$PageInfoImplCopyWithImpl<_$PageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfoImplToJson(
      this,
    );
  }
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {final int? totalResults, final int? resultsPerPage}) = _$PageInfoImpl;

  factory _PageInfo.fromJson(Map<String, dynamic> json) =
      _$PageInfoImpl.fromJson;

  @override
  int? get totalResults;
  @override
  int? get resultsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String? get kind => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  Id? get id => throw _privateConstructorUsedError;
  Snippet? get snippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call({String? kind, String? etag, Id? id, Snippet? snippet});

  $IdCopyWith<$Res>? get id;
  $SnippetCopyWith<$Res>? get snippet;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      snippet: freezed == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SnippetCopyWith<$Res>? get snippet {
    if (_value.snippet == null) {
      return null;
    }

    return $SnippetCopyWith<$Res>(_value.snippet!, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(
          _$ItemsImpl value, $Res Function(_$ItemsImpl) then) =
      __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kind, String? etag, Id? id, Snippet? snippet});

  @override
  $IdCopyWith<$Res>? get id;
  @override
  $SnippetCopyWith<$Res>? get snippet;
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res>
    extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(
      _$ItemsImpl _value, $Res Function(_$ItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_$ItemsImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id?,
      snippet: freezed == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsImpl implements _Items {
  const _$ItemsImpl({this.kind, this.etag, this.id, this.snippet});

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsImplFromJson(json);

  @override
  final String? kind;
  @override
  final String? etag;
  @override
  final Id? id;
  @override
  final Snippet? snippet;

  @override
  String toString() {
    return 'Items(kind: $kind, etag: $etag, id: $id, snippet: $snippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag, id, snippet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsImplToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {final String? kind,
      final String? etag,
      final Id? id,
      final Snippet? snippet}) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  String? get kind;
  @override
  String? get etag;
  @override
  Id? get id;
  @override
  Snippet? get snippet;
  @override
  @JsonKey(ignore: true)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Id _$IdFromJson(Map<String, dynamic> json) {
  return _Id.fromJson(json);
}

/// @nodoc
mixin _$Id {
  String? get kind => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdCopyWith<Id> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdCopyWith<$Res> {
  factory $IdCopyWith(Id value, $Res Function(Id) then) =
      _$IdCopyWithImpl<$Res, Id>;
  @useResult
  $Res call({String? kind, String? videoId});
}

/// @nodoc
class _$IdCopyWithImpl<$Res, $Val extends Id> implements $IdCopyWith<$Res> {
  _$IdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdImplCopyWith<$Res> implements $IdCopyWith<$Res> {
  factory _$$IdImplCopyWith(_$IdImpl value, $Res Function(_$IdImpl) then) =
      __$$IdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kind, String? videoId});
}

/// @nodoc
class __$$IdImplCopyWithImpl<$Res> extends _$IdCopyWithImpl<$Res, _$IdImpl>
    implements _$$IdImplCopyWith<$Res> {
  __$$IdImplCopyWithImpl(_$IdImpl _value, $Res Function(_$IdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_$IdImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdImpl implements _Id {
  const _$IdImpl({this.kind, this.videoId});

  factory _$IdImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdImplFromJson(json);

  @override
  final String? kind;
  @override
  final String? videoId;

  @override
  String toString() {
    return 'Id(kind: $kind, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdImplCopyWith<_$IdImpl> get copyWith =>
      __$$IdImplCopyWithImpl<_$IdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdImplToJson(
      this,
    );
  }
}

abstract class _Id implements Id {
  const factory _Id({final String? kind, final String? videoId}) = _$IdImpl;

  factory _Id.fromJson(Map<String, dynamic> json) = _$IdImpl.fromJson;

  @override
  String? get kind;
  @override
  String? get videoId;
  @override
  @JsonKey(ignore: true)
  _$$IdImplCopyWith<_$IdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
mixin _$Snippet {
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Thumbnails? get thumbnails => throw _privateConstructorUsedError;
  String? get channelTitle => throw _privateConstructorUsedError;
  String? get liveBroadcastContent => throw _privateConstructorUsedError;
  String? get publishTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res, Snippet>;
  @useResult
  $Res call(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      Thumbnails? thumbnails,
      String? channelTitle,
      String? liveBroadcastContent,
      String? publishTime});

  $ThumbnailsCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res, $Val extends Snippet>
    implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? liveBroadcastContent = freezed,
    Object? publishTime = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      liveBroadcastContent: freezed == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsCopyWith<$Res>? get thumbnails {
    if (_value.thumbnails == null) {
      return null;
    }

    return $ThumbnailsCopyWith<$Res>(_value.thumbnails!, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnippetImplCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$$SnippetImplCopyWith(
          _$SnippetImpl value, $Res Function(_$SnippetImpl) then) =
      __$$SnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      Thumbnails? thumbnails,
      String? channelTitle,
      String? liveBroadcastContent,
      String? publishTime});

  @override
  $ThumbnailsCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class __$$SnippetImplCopyWithImpl<$Res>
    extends _$SnippetCopyWithImpl<$Res, _$SnippetImpl>
    implements _$$SnippetImplCopyWith<$Res> {
  __$$SnippetImplCopyWithImpl(
      _$SnippetImpl _value, $Res Function(_$SnippetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? liveBroadcastContent = freezed,
    Object? publishTime = freezed,
  }) {
    return _then(_$SnippetImpl(
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      liveBroadcastContent: freezed == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetImpl implements _Snippet {
  const _$SnippetImpl(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.thumbnails,
      this.channelTitle,
      this.liveBroadcastContent,
      this.publishTime});

  factory _$SnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetImplFromJson(json);

  @override
  final String? publishedAt;
  @override
  final String? channelId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Thumbnails? thumbnails;
  @override
  final String? channelTitle;
  @override
  final String? liveBroadcastContent;
  @override
  final String? publishTime;

  @override
  String toString() {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, liveBroadcastContent: $liveBroadcastContent, publishTime: $publishTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetImpl &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.liveBroadcastContent, liveBroadcastContent) ||
                other.liveBroadcastContent == liveBroadcastContent) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publishedAt, channelId, title,
      description, thumbnails, channelTitle, liveBroadcastContent, publishTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      __$$SnippetImplCopyWithImpl<_$SnippetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetImplToJson(
      this,
    );
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {final String? publishedAt,
      final String? channelId,
      final String? title,
      final String? description,
      final Thumbnails? thumbnails,
      final String? channelTitle,
      final String? liveBroadcastContent,
      final String? publishTime}) = _$SnippetImpl;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$SnippetImpl.fromJson;

  @override
  String? get publishedAt;
  @override
  String? get channelId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  Thumbnails? get thumbnails;
  @override
  String? get channelTitle;
  @override
  String? get liveBroadcastContent;
  @override
  String? get publishTime;
  @override
  @JsonKey(ignore: true)
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
mixin _$Thumbnails {
  Default? get default_ => throw _privateConstructorUsedError;
  Default? get medium => throw _privateConstructorUsedError;
  Default? get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res, Thumbnails>;
  @useResult
  $Res call({Default? default_, Default? medium, Default? high});

  $DefaultCopyWith<$Res>? get default_;
  $DefaultCopyWith<$Res>? get medium;
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res, $Val extends Thumbnails>
    implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? default_ = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_value.copyWith(
      default_: freezed == default_
          ? _value.default_
          : default_ // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res>? get default_ {
    if (_value.default_ == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.default_!, (value) {
      return _then(_value.copyWith(default_: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThumbnailsImplCopyWith<$Res>
    implements $ThumbnailsCopyWith<$Res> {
  factory _$$ThumbnailsImplCopyWith(
          _$ThumbnailsImpl value, $Res Function(_$ThumbnailsImpl) then) =
      __$$ThumbnailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Default? default_, Default? medium, Default? high});

  @override
  $DefaultCopyWith<$Res>? get default_;
  @override
  $DefaultCopyWith<$Res>? get medium;
  @override
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class __$$ThumbnailsImplCopyWithImpl<$Res>
    extends _$ThumbnailsCopyWithImpl<$Res, _$ThumbnailsImpl>
    implements _$$ThumbnailsImplCopyWith<$Res> {
  __$$ThumbnailsImplCopyWithImpl(
      _$ThumbnailsImpl _value, $Res Function(_$ThumbnailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? default_ = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_$ThumbnailsImpl(
      default_: freezed == default_
          ? _value.default_
          : default_ // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailsImpl implements _Thumbnails {
  const _$ThumbnailsImpl({this.default_, this.medium, this.high});

  factory _$ThumbnailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailsImplFromJson(json);

  @override
  final Default? default_;
  @override
  final Default? medium;
  @override
  final Default? high;

  @override
  String toString() {
    return 'Thumbnails(default_: $default_, medium: $medium, high: $high)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsImpl &&
            (identical(other.default_, default_) ||
                other.default_ == default_) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, default_, medium, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsImplCopyWith<_$ThumbnailsImpl> get copyWith =>
      __$$ThumbnailsImplCopyWithImpl<_$ThumbnailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailsImplToJson(
      this,
    );
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
      {final Default? default_,
      final Default? medium,
      final Default? high}) = _$ThumbnailsImpl;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$ThumbnailsImpl.fromJson;

  @override
  Default? get default_;
  @override
  Default? get medium;
  @override
  Default? get high;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailsImplCopyWith<_$ThumbnailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Default _$DefaultFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
mixin _$Default {
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultCopyWith<Default> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCopyWith<$Res> {
  factory $DefaultCopyWith(Default value, $Res Function(Default) then) =
      _$DefaultCopyWithImpl<$Res, Default>;
  @useResult
  $Res call({String? url, int? width, int? height});
}

/// @nodoc
class _$DefaultCopyWithImpl<$Res, $Val extends Default>
    implements $DefaultCopyWith<$Res> {
  _$DefaultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultImplCopyWith<$Res> implements $DefaultCopyWith<$Res> {
  factory _$$DefaultImplCopyWith(
          _$DefaultImpl value, $Res Function(_$DefaultImpl) then) =
      __$$DefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? width, int? height});
}

/// @nodoc
class __$$DefaultImplCopyWithImpl<$Res>
    extends _$DefaultCopyWithImpl<$Res, _$DefaultImpl>
    implements _$$DefaultImplCopyWith<$Res> {
  __$$DefaultImplCopyWithImpl(
      _$DefaultImpl _value, $Res Function(_$DefaultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$DefaultImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultImpl implements _Default {
  const _$DefaultImpl({this.url, this.width, this.height});

  factory _$DefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultImplFromJson(json);

  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'Default(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      __$$DefaultImplCopyWithImpl<_$DefaultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultImplToJson(
      this,
    );
  }
}

abstract class _Default implements Default {
  const factory _Default(
      {final String? url, final int? width, final int? height}) = _$DefaultImpl;

  factory _Default.fromJson(Map<String, dynamic> json) = _$DefaultImpl.fromJson;

  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
