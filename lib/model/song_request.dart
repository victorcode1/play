// To parse this JSON data, do
//
//     final songRequest = songRequestFromJson(jsonString);

import 'dart:convert';

SongRequest songRequestFromJson(String str) => SongRequest.fromJson(json.decode(str));

String songRequestToJson(SongRequest data) => json.encode(data.toJson());

class SongRequest {
    Context? context;
    String? videoId;
    bool? isAudioOnly;
    String? playlistId;
    String? tunerSettingValue;
    String? params;
    WatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

    SongRequest({
        this.context,
        this.videoId,
        this.isAudioOnly,
        this.playlistId,
        this.tunerSettingValue,
        this.params,
        this.watchEndpointMusicSupportedConfigs,
    });

    factory SongRequest.fromJson(Map<String, dynamic> json) => SongRequest(
        context: json["context"] == null ? null : Context.fromJson(json["context"]),
        videoId: json["videoId"],
        isAudioOnly: json["isAudioOnly"],
        playlistId: json["playlistId"],
        tunerSettingValue: json["tunerSettingValue"],
        params: json["params"],
        watchEndpointMusicSupportedConfigs: json["watchEndpointMusicSupportedConfigs"] == null ? null : WatchEndpointMusicSupportedConfigs.fromJson(json["watchEndpointMusicSupportedConfigs"]),
    );

    Map<String, dynamic> toJson() => {
        "context": context?.toJson(),
        "videoId": videoId,
        "isAudioOnly": isAudioOnly,
        "playlistId": playlistId,
        "tunerSettingValue": tunerSettingValue,
        "params": params,
        "watchEndpointMusicSupportedConfigs": watchEndpointMusicSupportedConfigs?.toJson(),
    };
}

class Context {
    Client? client;

    Context({
        this.client,
    });

    factory Context.fromJson(Map<String, dynamic> json) => Context(
        client: json["client"] == null ? null : Client.fromJson(json["client"]),
    );

    Map<String, dynamic> toJson() => {
        "client": client?.toJson(),
    };
}

class Client {
    String? clientName;
    String? clientVersion;
    String? platform;
    String? hl;
    String? visitorData;

    Client({
        this.clientName,
        this.clientVersion,
        this.platform,
        this.hl,
        this.visitorData,
    });

    factory Client.fromJson(Map<String, dynamic> json) => Client(
        clientName: json["clientName"],
        clientVersion: json["clientVersion"],
        platform: json["platform"],
        hl: json["hl"],
        visitorData: json["visitorData"],
    );

    Map<String, dynamic> toJson() => {
        "clientName": clientName,
        "clientVersion": clientVersion,
        "platform": platform,
        "hl": hl,
        "visitorData": visitorData,
    };
}

class WatchEndpointMusicSupportedConfigs {
    String? musicVideoType;

    WatchEndpointMusicSupportedConfigs({
        this.musicVideoType,
    });

    factory WatchEndpointMusicSupportedConfigs.fromJson(Map<String, dynamic> json) => WatchEndpointMusicSupportedConfigs(
        musicVideoType: json["musicVideoType"],
    );

    Map<String, dynamic> toJson() => {
        "musicVideoType": musicVideoType,
    };
}
