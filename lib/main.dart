import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play/config/app_router.dart';
import 'package:play/provider/search.dart';
import 'package:play/ui/list_search.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
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
                    context.go('/');
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
                    border: InputBorder.none))),
        body: widget.child ?? const ListSearch(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              focusNode.requestFocus();
            },
            child: const Icon(Icons.search)));
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
