import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:play/model/song_request.dart';
import 'package:play/model/song_response.dart';
import 'package:play/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'play_song_funtion.g.dart';

@riverpod
class PlaySong extends _$PlaySong {
  @override
  FutureOr<SongResponse?> build(
      {required String songId, required String playId}) {
    return _fetchData(songId: songId, playId: playId);
  }

  Future<SongResponse?> _fetchData(
      {required String songId, required String playId}) async {
    try {
      String url =
          'https://music.youtube.com/youtubei/v1/next?prettyPrint=false';
      String bodyParams = json.encode(SongRequest(
        context: Context(
            client: Client(
                clientName: "WEB_REMIX",
                clientVersion: "1.20220918",
                platform: "DESKTOP",
                hl: "en",
                visitorData: "CgtEUlRINDFjdm1YayjX1pSaBg%3D%3D")),
        watchEndpointMusicSupportedConfigs: WatchEndpointMusicSupportedConfigs(
            musicVideoType: "MUSIC_VIDEO_TYPE_ATV"),
        isAudioOnly: true,
        playlistId: playId,
        videoId: songId,
        params: "wAEB8gECeAHqBAtDaE1JMUZuU2N5UQ%3D%3D",
        tunerSettingValue: "AUTOMIX_SETTING_NORMAL",
      ));
      Map<String, String> headers = Utils.header();
      headers['content-length'] = utf8.encode(bodyParams).length.toString();

      final res =
          await http.post(Uri.parse(url), headers: headers, body: bodyParams);

      if (res.statusCode == 200) {
        return SongResponse.fromJson(json.decode(res.body));
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (e, s) {
      debugPrint('Error: $e');
      debugPrint('Stack: $s');
      throw Exception('Failed to load data!');
    }
  }
}
