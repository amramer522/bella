import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemScreen extends StatelessWidget {
  final bool isStart;
  final String image,title,subTitle,hint;
  const ItemScreen({Key? key, required this.isStart, required this.image, required this.title, required this.subTitle, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(isStart)
        Image.network(
          image,
          height: 525.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff252B42),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              hint,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff737373),
              ),
            ),
          ],
        ),
        if(!isStart)
          Image.network(
            image,
            height: 525.h,
          ),
      ],
    );
  }
}
