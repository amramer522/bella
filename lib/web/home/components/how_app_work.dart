import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowAppWorkSection extends StatelessWidget {
  const HowAppWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(
          "https://firebasestorage.googleapis.com/v0/b/movies-4fc0d.appspot.com/o/Group%2053.png?alt=media&token=4630d3f7-09d8-4f94-8696-b36b920017ba",
          height: 640.h,
        ),
        Divider(
          indent: 275.w,
          endIndent: 275.w,
          thickness: 3.h,
          color: const Color(0xffE4E4E4),
        ),
        SizedBox(height: 44.h,),
        Center(
          child: Text(
            "How the app works",
            style: TextStyle(
              fontSize: 44.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
