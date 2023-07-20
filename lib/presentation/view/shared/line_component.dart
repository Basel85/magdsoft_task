import 'package:flutter/cupertino.dart';

class LineComponent extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const LineComponent({super.key, required this.height, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
