// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

/// Class [Quote]
class Quote extends Equatable {
  /// Initial instance of [Quote]
  const Quote({
    required this.id,
    required this.body,
    this.author,
    this.isFavorite,
    this.isUpvoted,
    this.isDownvoted,
    required this.favoritesCount,
    required this.upvotesCount,
    required this.downvotesCount,
  });

  final int id;
  final String body;
  final String? author;
  final bool? isFavorite;
  final bool? isUpvoted;
  final bool? isDownvoted;
  final int favoritesCount;
  final int upvotesCount;
  final int downvotesCount;

  @override
  List<Object?> get props => [
        id,
        body,
        author,
        isFavorite,
        isUpvoted,
        isDownvoted,
        favoritesCount,
        upvotesCount,
        downvotesCount,
      ];
}
