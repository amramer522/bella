import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget{
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _HomeAppBarState extends State<HomeAppBar>
{
  int selectedIndex = 0;
  List<String> tabs = ["Home", "Product", "Faq", "Contact"];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.red,
      leadingWidth: 290.w,
      leading: Padding(
        padding: EdgeInsetsDirectional.only(start: 90.w),
        child: Image.asset(
          "assets/images/logo.png",
          width: 200.w,
          height: 100.h,
          fit: BoxFit.scaleDown,
        ),
      ),
      toolbarHeight: 155.h,
      actions: List.generate(tabs.length,
            (index) => Padding(
          padding: EdgeInsetsDirectional.only(end: index == tabs.length - 1 ? 40.w : 90.w),
          child: TextButton(
              style: TextButton.styleFrom(foregroundColor: index == selectedIndex ? null : Colors.black),
              child: Text(
                tabs[index],
              ),
              onPressed: () {
                selectedIndex = index;
                setState(() {});
              }),
        ),
      ),
    );
  }
}
