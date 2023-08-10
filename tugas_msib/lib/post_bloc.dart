import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tugas_msib/api_service.dart';
import 'package:tugas_msib/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final ApiService apiService;

  PostBloc(this.apiService) : super(PostState.initial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is FetchPosts) {
      yield* _mapFetchPostsToState();
    }
  }

  Stream<PostState> _mapFetchPostsToState() async* {
    yield PostState.loading();

    try {
      final posts = await apiService.getPosts();
      yield PostState.loaded(posts);
    } catch (e) {
      yield PostState.error('Failed to fetch posts');
    }
  }
}
