import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:coordonate_app/features/feed/domain/usecases/get_all_posts.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final GetAllPosts getAllPosts;
  FeedBloc({required this.getAllPosts}) : super(InitialFeedState()) {
    on<GetFeedsEvent>((event, emit) async {
      emit(LoadingFeedState());
      final feed = await getAllPosts(NoParams());
      feed.fold((l) => emit(ErrorFeedState(message: l.toString())),
          (r) => emit(LoadedFeedState(postsEntity: r)));
    });
  }
}