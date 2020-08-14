
import 'package:flutter/material.dart';

class CXStarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color selectColor;
  final Color unSelectColor;

  final Widget unselectedImage;
  final Widget selectedImage;

  CXStarRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectColor = const Color(0xffbbbbbb),
    this.selectColor = const Color(0xffff0000),
    Widget unselectedImage,
    Widget selectedImage,
  })  : unselectedImage = unselectedImage ??
      Icon(Icons.star_border, color: unSelectColor, size: size),
        selectedImage =
            selectedImage ?? Icon(Icons.star, color: selectColor, size: size);

  @override
  _CXStarRatingState createState() => _CXStarRatingState();
}

class _CXStarRatingState extends State<CXStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        )
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar() {
// 1.创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage;
    // 2.构建满填充的star
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for (int i = 0; i < entireCount; i++) {
      stars.add(star);
    }
    // 3.构建部分填充star
    // (widget.rating / oneValue) 3.5 - 3 = 0.5 * widget.size
    double clipperWidth =
        ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      child: star,
      clipper: CXStarClipper(clipperWidth),
    );

    stars.add(halfStar);
    if (stars.length > widget.count) {
      return stars.sublist(0, widget.count);
    }
    return stars;
  }
}

class CXStarClipper extends CustomClipper<Rect> {
  double width;

  CXStarClipper(this.width);

  @override
  getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CXStarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
}
