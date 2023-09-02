import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0,
  HomePage = 0,
  AddPostPage = 1;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            PageView(
              // Physics(NeverScrollableScrollPhysics),
              // Controller(PageController),
              // onPageChange(onPageChanged),
            )
        )
    );
  }

  void navigationTapped(int page){
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page){
    _page = page;
  }





}
