import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_home_page/data/story_data.dart';
import 'package:instagram_home_page/data/user_post_data.dart';
import 'package:instagram_home_page/widget/story_following.dart';
import 'package:instagram_home_page/widget/story_profile.dart';
import 'package:instagram_home_page/widget/user_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              snap: true,
              title: const Text(
                "Instagram",
                style: TextStyle(fontFamily: 'BlueVinyl'),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Heart.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Send.svg"))
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Row(
                        children: stories.map((story) {
                          if (story.username.isEmpty) {
                            return storyProfile(
                                imgPath: story.imgPath, clicked: story.clicked);
                          } else {
                            return storyFollowing(
                                imgPath: story.imgPath,
                                username: story.username,
                                clicked: story.clicked);
                          }
                        }).toList(),
                      ),
                    ),
                  ),
                  Column(
                    children: postData.map((data) {
                      return userPost(
                          username: data.username,
                          photoProfile: data.photoProfile,
                          photoPost: data.photoPost,
                          description: data.description);
                    }).toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
