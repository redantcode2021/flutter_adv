import 'package:flutter/material.dart';

/// Features: quote_list_screen
class QuoteListScreen extends StatelessWidget {
  /// Default instance of [QuoteListScreen]
  const QuoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuoteListView();
  }
}

class QuoteListView extends StatefulWidget {
  const QuoteListView({super.key});

  @override
  State<QuoteListView> createState() => _QuoteListViewState();
}

class _QuoteListViewState extends State<QuoteListView> {
  final TextEditingController _searchBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                child: Text('Search Bar!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
