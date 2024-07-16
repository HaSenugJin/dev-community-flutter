import 'package:dev_community/pages/home/widgets/build-post.dart';
import 'package:dev_community/pages/home/widgets/popular-post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPostPage extends StatelessWidget {
  const PopularPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = [
      {
        "name": "공지영",
        "position": "신입개발자",
        "title": "제목 : FlashAttention3 공개",
      },
      {
        "name": "공지영",
        "position": "신입개발자",
        "title": "제목 : FlashAttention3 공개",
      },
      {
        "name": "공지영",
        "position": "신입개발자",
        "time": "3시간 전",
        "title": "제목 : FlashAttention3 공개",
        "content": "내용 : LLM의 속도 향상을 위해서 최근에 많은 방법들이 시도되고 있는데요,.. ",
        "views": "조회 698",
      },
      {
        "name": "공지영",
        "position": "신입개발자",
        "time": "3시간 전",
        "title": "제목 : FlashAttention3 공개",
        "content": "내용 : LLM의 속도 향상을 위해서 최근에 많은 방법들이 시도되고 있는데요,.. ",
        "views": "조회 698",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("인기 게시글"),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return Column(
              children: [
                PopularPost(
                  name: post["name"]!,
                  job: post["position"]!,
                  title: post["title"]!,
                ),
                SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
    );
  }
}