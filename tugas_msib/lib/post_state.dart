part of 'post_bloc.dart';

@immutable
class PostState extends Equatable {
  final bool isLoading;
  final List<Post> posts;
  final String? error;

  const PostState({
    required this.isLoading,
    required this.posts,
    this.error,
  });

  factory PostState.initial() => const PostState(isLoading: false, posts: []);

  factory PostState.loading() => const PostState(isLoading: true, posts: []);

  factory PostState.loaded(List<Post> posts) =>
      PostState(isLoading: false, posts: posts);

  factory PostState.error(String error) =>
      PostState(isLoading: false, posts: [], error: error);

  @override
  List<Object?> get props => [isLoading, posts, error];
}
