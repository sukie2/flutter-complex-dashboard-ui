import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannersSection extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: SizedBox(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image.asset('images/save1.jpeg'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('images/save3.jpeg'),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image.asset('images/save1.jpeg'),
                ),
              ],
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: SlideEffect(
              spacing: 8.0,
              radius: 4.0,
              dotWidth: 12.0,
              dotHeight: 8.0,
              paintStyle: PaintingStyle.fill,
              strokeWidth: 1.5,
              dotColor: Colors.grey,
              activeDotColor: Colors.pink),
        )
      ],
    );
  }
}
