import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:genesis/bootstrap.dart';
import 'package:genesis/l10n/arb/app_localizations.dart';
import 'package:genesis/routing_table.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  bootstrap(() => const GenesisApp());
}

class GenesisApp extends StatefulWidget {
  const GenesisApp({super.key});

  @override
  State<GenesisApp> createState() => _GenesisAppState();
}

class _GenesisAppState extends State<GenesisApp> {
  /// router delegate implementation of routemaster packages
  late final _routerDelegate = RoutemasterDelegate(
    observers: [],
    routesBuilder: (context) {
      return RouteMap(
        routes: buildRoutingTable(
          routerDelegate: _routerDelegate,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      supportedLocales: const [
        Locale('en', ''),
        Locale('id', 'ID'),
      ],
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      routerDelegate: _routerDelegate,
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
