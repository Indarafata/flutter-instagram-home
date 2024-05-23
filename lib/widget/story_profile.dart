import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget storyProfile({required String imgPath, required bool clicked}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 8.h,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Stack(children: [
            ClipOval(
              child: Image.asset(imgPath),
            ),
            Positioned(
              bottom: 0.3.h,
              right: 0.3.h,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ]),
        ),
        const Text("Your story")
      ],
    ),
  );
}
