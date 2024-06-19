// ignore_for_file: library_private_types_in_public_api
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_assets.dart';
import 'package:slash_task/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideBanners extends StatefulWidget {
  const SlideBanners({super.key});

  @override
  _SlideBannersState createState() => _SlideBannersState();
}

class _SlideBannersState extends State<SlideBanners> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  final List<String> imgList = [
    Assets.imagesBanner1,
    Assets.imagesBanner2,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList.map((item) => Image.asset(item)).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 0.87,
            padEnds: false,
            enlargeCenterPage: true,
            aspectRatio: 2.8,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: imgList.length,
          effect: const ScrollingDotsEffect(
            activeDotColor: AppColors.primaryColor,
            dotColor: AppColors.dotsColr,
            dotHeight: 5,
            dotWidth: 8,
            activeDotScale: 1.5,
          ),
        ),
      ],
    );
  }
}
