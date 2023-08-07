part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent extends Equatable {
  // const FeedEvent() : Super();
  @override
  List<Object> get props => [];
}

class GetFeedsEvent extends FeedEvent {}

class LikePostEvent extends FeedEvent {}

class BookmarkPostEvent extends FeedEvent {}

class CommentPostEvent extends FeedEvent {}
