import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play/provider/list_search_result.dart';

class ListSongs extends ConsumerWidget {
  const ListSongs({super.key, this.data});
  final String? data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        child: ref.watch(searchResultDataProvider(data ?? '')).when(
            data: (data) => data == null
                ? null
                : ListView.builder(
                    itemCount: data
                        .contents!
                        .tabbedSearchResultsRenderer!
                        .tabs!
                        .first
                        .tabRenderer!
                        .content!
                        .sectionListRenderer!
                        .contents!
                        .first
                        .musicShelfRenderer!
                        .contents!
                        .length,
                    itemBuilder: (context, index) {
                      final dataRes = data
                          .contents!
                          .tabbedSearchResultsRenderer!
                          .tabs!
                          .first
                          .tabRenderer!
                          .content!
                          .sectionListRenderer!
                          .contents!
                          .first
                          .musicShelfRenderer!
                          .contents![index];
                      final imageRes = data
                          .contents!
                          .tabbedSearchResultsRenderer!
                          .tabs!
                          .first
                          .tabRenderer!
                          .content!
                          .sectionListRenderer!
                          .contents!
                          .first
                          .musicShelfRenderer!
                          .contents![index]
                          .musicResponsiveListItemRenderer!
                          .thumbnail!
                          .musicThumbnailRenderer!
                          .thumbnail!
                          .thumbnails![1]
                          .url;

                      final sub = data
                          .contents!
                          .tabbedSearchResultsRenderer!
                          .tabs!
                          .first
                          .tabRenderer!
                          .content!
                          .sectionListRenderer!
                          .contents!
                          .first
                          .musicShelfRenderer!
                          .contents![index]
                          .musicResponsiveListItemRenderer!
                          .flexColumns![2]
                          .musicResponsiveListItemFlexColumnRenderer!
                          .text!
                          .runs!
                          .first
                          .text;
                      final idSong = data
                          .contents!
                          .tabbedSearchResultsRenderer!
                          .tabs!
                          .first
                          .tabRenderer
                          ?.content!
                          .sectionListRenderer!
                          .contents!
                          .first
                          .musicShelfRenderer!
                          .contents![index]
                          .musicResponsiveListItemRenderer!
                          .overlay!
                          .musicItemThumbnailOverlayRenderer!
                          .content!
                          .musicPlayButtonRenderer!
                          .playNavigationEndpoint!
                          .watchEndpoint
                          ?.videoId;

                      final playListId = data
                          .contents!
                          .tabbedSearchResultsRenderer!
                          .tabs!
                          .first
                          .tabRenderer
                          ?.content!
                          .sectionListRenderer!
                          .contents!
                          .first
                          .musicShelfRenderer!
                          .contents![index]
                          .musicResponsiveListItemRenderer
                          ?.menu
                          ?.menuRenderer
                          ?.items
                          ?.first
                          .menuNavigationItemRenderer
                          ?.navigationEndpoint
                          ?.watchEndpoint
                          ?.playlistId;
                      return ListTile(
                          onTap: () {
                            context
                                .go('/playSong', extra: {idSong: playListId});
                          },
                          style: ListTileStyle.list,
                          leading: SizedBox(
                            height: 300,
                            child: ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(imageRes!,
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          subtitle: Text(
                            sub ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          title: Text(
                            dataRes
                                    .musicResponsiveListItemRenderer!
                                    .flexColumns!
                                    .first
                                    .musicResponsiveListItemFlexColumnRenderer!
                                    .text!
                                    .runs!
                                    .first
                                    .text ??
                                '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ));
                    },
                  ),
            error: (error, stack) => Center(child: Text('Error $error $stack')),
            loading: () => const Center(child: CircularProgressIndicator())));
  }
}
