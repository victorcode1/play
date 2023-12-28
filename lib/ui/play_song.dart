import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play/provider/play_song_id.dart';
import 'package:play/ui/screen_play.dart';

class PlaySong extends ConsumerStatefulWidget {
  final Map<String?, String?> data;
  const PlaySong({super.key, required this.data});

  @override
  ConsumerState<PlaySong> createState() => _PlaySongState();
}

class _PlaySongState extends ConsumerState<PlaySong> {
  @override
  void initState() {
    super.initState();
    print(widget.data.keys.first.toString());
  }

  @override
  Widget build(BuildContext context) {
    return ref
        .watch(playSongIdProvider(songId: widget.data.keys.first.toString()))
        .when(
            data: (data) {
              final urlSong = data!.streamingData?.adaptiveFormats!
                  .firstWhere((element) =>
                      element.mimeType == "audio/mp4; codecs=\"mp4a.40.5\"")
                  .url;

              return ScreenPlay(url: urlSong);
            },
            error: (error, stack) => Center(
                  child: Text('Error $error'),
                ),
            loading: () => const Center(child: CircularProgressIndicator()));
  }
}
