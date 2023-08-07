part of 'feed_bloc.dart';

@immutable
abstract class FeedState extends Equatable {
  const FeedState();

  @override
  List<Object> get props => [];
}

class InitialFeedState extends FeedState {}

class LoadingFeedState extends FeedState {}

class LoadedFeedState extends FeedState {
  final PostsEntity postsEntity;
  const LoadedFeedState({required this.postsEntity});

  @override
  List<Object> get props => [postsEntity];
}

class ErrorFeedState extends FeedState {
  final String message;
  const ErrorFeedState({required this.message});

  @override
  List<Object> get props => [message];
}
