import 'package:flutter/material.dart';
import 'package:genesis/tab_container_screen.dart';
import 'package:quote_list/quote_list.dart';
import 'package:routemaster/routemaster.dart';

Map<String, PageBuilder> buildRoutingTable({
  required RoutemasterDelegate routerDelegate,
}) {
  return {
    _PathConstants.tabContainerPath: (_) => CupertinoTabPage(
          child: const TabContainerScreen(),
          paths: [
            _PathConstants.quoteListPath,
            _PathConstants.profileMenuPath,
          ],
        ),
    _PathConstants.quoteListPath: (route) {
      return const MaterialPage(
        name: 'quotes-list',
        child: QuoteListScreen(),
      );
    },
    _PathConstants.profileMenuPath: (_) {
      return const MaterialPage(
        name: 'profile-menu',
        child: Scaffold(
          body: Center(
            child: Text('Profile'),
          ),
        ),
      );
    }
  };
}

class _PathConstants {
  const _PathConstants._();

  static String get tabContainerPath => '/';

  static String get quoteListPath => '${tabContainerPath}quotes';

  static String get profileMenuPath => '${tabContainerPath}user';
}
