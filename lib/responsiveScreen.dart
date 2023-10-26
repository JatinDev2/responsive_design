import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveCards extends StatelessWidget {
  const ResponsiveCards({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    double cardWidth = 0.8.sw;
    double topCardWidth = 0.3.sw;
    double bottomCardWidth = 0.9.sw;

    double greyContainerWidth = 100.0;

    double minHeight = 0.4.sh;
    double maxWidth = 1.sh;


    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: cardWidth,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey,
                  height: 20.0,
                  width: greyContainerWidth,
                ),
                SizedBox(height: 0.02.sh),
                Container(
                  color: Colors.green,
                  width: bottomCardWidth,
                  height: 20.0,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: cardWidth,
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: Container(
                    color: Colors.grey,
                    height: 20.0,
                    width: greyContainerWidth,
                  ),
                ),
                SizedBox(height: 0.02.sh),
                Container(
                  color: Colors.green,
                  width: bottomCardWidth,
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
