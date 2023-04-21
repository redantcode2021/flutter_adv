// ignore_for_file: public_member_api_docs

import 'package:component_library/src/l10n/component_library_localizations.dart';
import 'package:flutter/material.dart';

/// Component library: SearchBar
class SearchBar extends StatelessWidget {
  /// SearchBar construct
  const SearchBar({
    super.key,
    this.controller,
    this.onChanged,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = ComponentLibraryLocalizations.of(context);
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
        ),
        hintText: l10n.searchBarHintText,
        labelText: l10n.searchBarLabelText,
      ),
      onChanged: onChanged,
    );
  }
}
