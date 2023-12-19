import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play/config/app_router.dart';
import 'package:play/provider/list_result.dart';
import 'package:play/provider/search.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class ListSearch extends ConsumerWidget {
  const ListSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        child: ref.watch(searchDataProvider(ref.watch(searchProvider))).when(
            data: (data) => data == null
                ? null
                : ListView.builder(
                    itemCount: data.contents?.first
                        .searchSuggestionsSectionRenderer?.contents?.length,
                    itemBuilder: (context, index) {
                      final dataRes = data.contents?.first
                          .searchSuggestionsSectionRenderer?.contents?[index];
                      return ListTile(
                          onTap: () {
                            context.go('/songs');
                          },
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.search),
                              Expanded(
                                child: Text(dataRes
                                        ?.searchSuggestionRenderer
                                        ?.navigationEndpoint
                                        ?.searchEndpoint
                                        ?.query
                                        .toString() ??
                                    ''),
                              ),
                              const Icon(Icons.arrow_right)
                            ],
                          ));
                    },
                  ),
            error: (error, stack) => Center(child: Text('Error $error $stack')),
            loading: () => const Center(child: CircularProgressIndicator())));
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: router, debugShowCheckedModeBanner: false);
  }
}

class SearchScreen extends ConsumerStatefulWidget {
  final Widget? child;
  const SearchScreen({super.key, this.child});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<SearchScreen> {
  Timer? _debounce;

  final TextEditingController _searchController = TextEditingController();

  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
              focusNode: focusNode,
              controller: _searchController,
              onChanged: (query) {
                if (_debounce?.isActive ?? false) _debounce?.cancel();
                _debounce = Timer(const Duration(milliseconds: 1000), () {
                  ref.watch(searchProvider.notifier).setValue(query);
                });
              },
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 34,
                      fontWeight: FontWeight.w500),
                  hintText: 'Search',
                  border: InputBorder.none)),
        ),
        body: widget.child ?? const ListSearch(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            focusNode.requestFocus();
          },
          child: const Icon(Icons.search),
        ));
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
