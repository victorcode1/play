// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_search_result.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchResultDataHash() => r'ef28d32314c95643706075acff58243c9aefeda2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [searchResultData].
@ProviderFor(searchResultData)
const searchResultDataProvider = SearchResultDataFamily();

/// See also [searchResultData].
class SearchResultDataFamily extends Family<AsyncValue<ListSearchResult?>> {
  /// See also [searchResultData].
  const SearchResultDataFamily();

  /// See also [searchResultData].
  SearchResultDataProvider call(
    String search,
  ) {
    return SearchResultDataProvider(
      search,
    );
  }

  @override
  SearchResultDataProvider getProviderOverride(
    covariant SearchResultDataProvider provider,
  ) {
    return call(
      provider.search,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchResultDataProvider';
}

/// See also [searchResultData].
class SearchResultDataProvider
    extends AutoDisposeFutureProvider<ListSearchResult?> {
  /// See also [searchResultData].
  SearchResultDataProvider(
    String search,
  ) : this._internal(
          (ref) => searchResultData(
            ref as SearchResultDataRef,
            search,
          ),
          from: searchResultDataProvider,
          name: r'searchResultDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchResultDataHash,
          dependencies: SearchResultDataFamily._dependencies,
          allTransitiveDependencies:
              SearchResultDataFamily._allTransitiveDependencies,
          search: search,
        );

  SearchResultDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
  }) : super.internal();

  final String search;

  @override
  Override overrideWith(
    FutureOr<ListSearchResult?> Function(SearchResultDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchResultDataProvider._internal(
        (ref) => create(ref as SearchResultDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ListSearchResult?> createElement() {
    return _SearchResultDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultDataProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchResultDataRef on AutoDisposeFutureProviderRef<ListSearchResult?> {
  /// The parameter `search` of this provider.
  String get search;
}

class _SearchResultDataProviderElement
    extends AutoDisposeFutureProviderElement<ListSearchResult?>
    with SearchResultDataRef {
  _SearchResultDataProviderElement(super.provider);

  @override
  String get search => (origin as SearchResultDataProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
