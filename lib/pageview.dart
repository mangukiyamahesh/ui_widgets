import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  int select = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    PageView(
                      onPageChanged: (value) {
                        setState(
                          () {
                            select = value;
                          },
                        );
                      },
                      allowImplicitScrolling: true,
                      controller: pageController,
                      physics: BouncingScrollPhysics(),
                      children: [
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors.red,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors.green,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 15),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            select = index;
                          });
                        },
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor:
                              select == index ? Colors.orange : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
