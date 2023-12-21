import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:play/model/list_search_result.dart';
import 'package:play/model/search_model_request.dart';
import 'package:play/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_search_result.g.dart';

@riverpod
FutureOr<ListSearchResult?> searchResultData(
    SearchResultDataRef ref, String search) async {
  if (search.isEmpty) return null;
  try {
    String url =
        'https://music.youtube.com/youtubei/v1/search?prettyPrint=false';
    String bodyParams = json.encode(SearModelRequest(
        params: "EgWKAQIIAWoKEAkQBRAKEAMQBA%3D%3D",
        query: search,
        context: const Context(
            client: Client(
          clientName: "WEB_REMIX",
          clientVersion: "1.20220918",
          platform: "DESKTOP",
          hl: "en",
          visitorData: "CgtEUlRINDFjdm1YayjX1pSaBg%3D%3D",
        ))));
    Map<String, String> headers = Utils.header();
    headers['content-length'] = utf8.encode(bodyParams).length.toString();
    final res =
        await http.post(Uri.parse(url), headers: headers, body: bodyParams);

    if (res.statusCode == 200) {
      debugPrint('Data: ${ListSearchResult.fromJson(json.decode(res.body))}');
      return ListSearchResult.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to load data!');
    }
  } catch (e, s) {
    debugPrint('Error: $e');
    debugPrint('Stack: $s');
    throw Exception('Failed to load data!');
  }
}
