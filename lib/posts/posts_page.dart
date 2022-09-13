import 'package:flutter/material.dart';

import '../data/app_data.dart';
import '../widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < posts.length; i++)
                PostTile(
                  tileColor: posts[i].color,
                  postTitle: posts[i].title,
                  onTileTap: () {},
                ),
            ],
          ),
        ),
      ),
    );
  }
}