// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_result.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchDataHash() => r'07eb56d8bd89ece9f5a5093ed1b1d0b20c9302e5';

/// See also [searchData].
@ProviderFor(searchData)
final searchDataProvider = AutoDisposeFutureProvider<SearchResult?>.internal(
  searchData,
  name: r'searchDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchDataRef = AutoDisposeFutureProviderRef<SearchResult?>;
String _$searchDataReqHash() => r'7560cc809de0fc436a94d11c1e8fc9883f14def4';

/// See also [SearchDataReq].
@ProviderFor(SearchDataReq)
final searchDataReqProvider =
    AutoDisposeAsyncNotifierProvider<SearchDataReq, SearchResult?>.internal(
  SearchDataReq.new,
  name: r'searchDataReqProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchDataReqHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchDataReq = AutoDisposeAsyncNotifier<SearchResult?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
