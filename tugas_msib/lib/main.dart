import 'package:flutter/material.dart';
import 'package:tugas_msib/main_page.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tugas_msib/api_service.dart';
// import 'package:tugas_msib/post_bloc.dart';

// void main() {
//   final apiService = ApiService();
//   runApp(MyApp(apiService: apiService));
// }

// class MyApp extends StatelessWidget {
//   final ApiService apiService;

//   const MyApp({required this.apiService});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BLoC Example',
//       home: BlocProvider(
//         create: (context) => PostBloc(apiService)..add(FetchPosts()),
//         child: const PostPage(),
//       ),
//     );
//   }
// }

// class PostPage extends StatelessWidget {
//   const PostPage();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Posts'),
//       ),
//       body: BlocBuilder<PostBloc, PostState>(
//         builder: (context, state) {
//           if (state.isLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state.error != null) {
//             return Center(child: Text(state.error!));
//           } else {
//             return ListView.builder(
//               itemCount: state.posts.length,
//               itemBuilder: (context, index) {
//                 final post = state.posts[index];
//                 return ListTile(
//                   title: Text(post.title ?? ''),
//                   subtitle: Text(post.body ?? ''),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
