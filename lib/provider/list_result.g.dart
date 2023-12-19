// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_result.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchDataHash() => r'ae13e5a0045a35e83e84945b9c29460525b9ba69';

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

/// See also [searchData].
@ProviderFor(searchData)
const searchDataProvider = SearchDataFamily();

/// See also [searchData].
class SearchDataFamily extends Family<AsyncValue<SearchResult?>> {
  /// See also [searchData].
  const SearchDataFamily();

  /// See also [searchData].
  SearchDataProvider call(
    String search,
  ) {
    return SearchDataProvider(
      search,
    );
  }

  @override
  SearchDataProvider getProviderOverride(
    covariant SearchDataProvider provider,
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
  String? get name => r'searchDataProvider';
}

/// See also [searchData].
class SearchDataProvider extends AutoDisposeFutureProvider<SearchResult?> {
  /// See also [searchData].
  SearchDataProvider(
    String search,
  ) : this._internal(
          (ref) => searchData(
            ref as SearchDataRef,
            search,
          ),
          from: searchDataProvider,
          name: r'searchDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchDataHash,
          dependencies: SearchDataFamily._dependencies,
          allTransitiveDependencies:
              SearchDataFamily._allTransitiveDependencies,
          search: search,
        );

  SearchDataProvider._internal(
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
    FutureOr<SearchResult?> Function(SearchDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchDataProvider._internal(
        (ref) => create(ref as SearchDataRef),
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
  AutoDisposeFutureProviderElement<SearchResult?> createElement() {
    return _SearchDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchDataProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchDataRef on AutoDisposeFutureProviderRef<SearchResult?> {
  /// The parameter `search` of this provider.
  String get search;
}

class _SearchDataProviderElement
    extends AutoDisposeFutureProviderElement<SearchResult?> with SearchDataRef {
  _SearchDataProviderElement(super.provider);

  @override
  String get search => (origin as SearchDataProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
