import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget userPost(
    {required String username,
    required String photoProfile,
    required String photoPost,
    required String description}) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 4.5.h,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      photoProfile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(username),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Image.asset(photoPost),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Heart.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Chat.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Send.svg")),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.bookmark_border),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("13.564 likes"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username),
                  SizedBox(
                    width: 1.w,
                  ),
                  Flexible(
                      child: Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
