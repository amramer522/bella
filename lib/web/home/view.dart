import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/home_app_bar.dart';
import 'components/home_header.dart';
import 'components/how_app_work.dart';
import 'components/item_screen.dart';

class HomeWebView extends StatelessWidget {
  const HomeWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(
        children: [
          HomeHeaderSection(),
          HowAppWorkSection(),
          ItemScreen(
            title: "Create an account",
            image: "https://firebasestorage.googleapis.com/v0/b/movies-4fc0d.appspot.com/o/Rectangle.png?alt=media&token=7eee1f5c-a41b-4102-a60a-a197ae7f2058",
            hint: "An account is created with your email\nand a desired password",
            subTitle: "Create/login to an existing\naccount to get started",
            isStart: true,
          ),
          ItemScreen(
            title: "Explore varieties",
            image: "https://firebasestorage.googleapis.com/v0/b/movies-4fc0d.appspot.com/o/Rectangle%20(3).png?alt=media&token=887651a5-d0d8-4989-9fac-087919e4dd15",
            hint: "Shop for your favorite meals or drinks\nand enjoy while doing it.",
            subTitle: "Shop for your favorites\nmeal as e dey hot.",
            isStart: false,
          ),
          ItemScreen(
            title: "Checkout",
            image: "https://firebasestorage.googleapis.com/v0/b/movies-4fc0d.appspot.com/o/Rectangle%20(2).png?alt=media&token=fed91c95-e47c-4535-a837-ec2eb324b106",
            hint: "When you done check out and get it\ndelivered with ease.",
            subTitle: "When you done check out\nand get it delivered.",
            isStart: true,
          ),
        ],
      ),
    );
  }
}
