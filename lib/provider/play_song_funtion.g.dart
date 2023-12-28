// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_song_funtion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playSongHash() => r'ee08f9396b027334daaa0e1d191a4ab934f3c91a';

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

abstract class _$PlaySong
    extends BuildlessAutoDisposeAsyncNotifier<SongResponse?> {
  late final String songId;
  late final String playId;

  FutureOr<SongResponse?> build({
    required String songId,
    required String playId,
  });
}

/// See also [PlaySong].
@ProviderFor(PlaySong)
const playSongProvider = PlaySongFamily();

/// See also [PlaySong].
class PlaySongFamily extends Family<AsyncValue<SongResponse?>> {
  /// See also [PlaySong].
  const PlaySongFamily();

  /// See also [PlaySong].
  PlaySongProvider call({
    required String songId,
    required String playId,
  }) {
    return PlaySongProvider(
      songId: songId,
      playId: playId,
    );
  }

  @override
  PlaySongProvider getProviderOverride(
    covariant PlaySongProvider provider,
  ) {
    return call(
      songId: provider.songId,
      playId: provider.playId,
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
  String? get name => r'playSongProvider';
}

/// See also [PlaySong].
class PlaySongProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlaySong, SongResponse?> {
  /// See also [PlaySong].
  PlaySongProvider({
    required String songId,
    required String playId,
  }) : this._internal(
          () => PlaySong()
            ..songId = songId
            ..playId = playId,
          from: playSongProvider,
          name: r'playSongProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$playSongHash,
          dependencies: PlaySongFamily._dependencies,
          allTransitiveDependencies: PlaySongFamily._allTransitiveDependencies,
          songId: songId,
          playId: playId,
        );

  PlaySongProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.songId,
    required this.playId,
  }) : super.internal();

  final String songId;
  final String playId;

  @override
  FutureOr<SongResponse?> runNotifierBuild(
    covariant PlaySong notifier,
  ) {
    return notifier.build(
      songId: songId,
      playId: playId,
    );
  }

  @override
  Override overrideWith(PlaySong Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlaySongProvider._internal(
        () => create()
          ..songId = songId
          ..playId = playId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        songId: songId,
        playId: playId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlaySong, SongResponse?>
      createElement() {
    return _PlaySongProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaySongProvider &&
        other.songId == songId &&
        other.playId == playId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, songId.hashCode);
    hash = _SystemHash.combine(hash, playId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlaySongRef on AutoDisposeAsyncNotifierProviderRef<SongResponse?> {
  /// The parameter `songId` of this provider.
  String get songId;

  /// The parameter `playId` of this provider.
  String get playId;
}

class _PlaySongProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlaySong, SongResponse?>
    with PlaySongRef {
  _PlaySongProviderElement(super.provider);

  @override
  String get songId => (origin as PlaySongProvider).songId;
  @override
  String get playId => (origin as PlaySongProvider).playId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
