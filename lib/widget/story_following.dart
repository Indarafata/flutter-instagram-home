import 'package:flutter/material.dart';
import 'package:instagram_home_page/utils/color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget storyFollowing(
    {required String imgPath,
    required String username,
    required bool clicked}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 8.5.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: clicked ? borderStoryColor : null),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(imgPath),
              ),
            ),
          ),
        ),
        Text(username)
      ],
    ),
  );
}
