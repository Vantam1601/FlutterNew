import 'package:flutter/material.dart';
import 'package:flutter_app/feature/infinite_list/posts/bloc/post_bloc.dart';
import 'package:flutter_app/feature/infinite_list/posts/bloc/post_event.dart';
import 'package:flutter_app/feature/infinite_list/posts/view/post_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())
          ..add(
            PostFetched(),
          ),
        child: PostList(),
      ),
    );
  }
}
