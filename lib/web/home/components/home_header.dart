import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 620.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://polskazachwyca.pl/wp-content/uploads/2018/10/jedzenie-potrawy-mi%C4%99so-festiwal-kulinarny-kuchnia-ilustracyjne-lily-banse-365344-unsplash.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(.6),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Food app",
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Color(0xffF6F6F6),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "Why stay hungry when\nyou can order form Bella Onojie",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 58.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text("Download the bella onoje’s food app now on",
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xffF6F6F6),
                    fontWeight: FontWeight.w300,
                  )),
              SizedBox(
                height: 54.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(onPressed: () {}, child: Text("Playstore")),
                  SizedBox(
                    width: 34.w,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("App store"),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
