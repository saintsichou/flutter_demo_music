import 'package:flutter/material.dart';
class MyStarRating extends StatefulWidget {
  final double rating;
  final double totalRating;
  final int count;
  final double size;
  final Color unselColor;
  final Color selColor;
  final Widget selImg;
  final Widget  unSelImg;

  MyStarRating(
      {Key key,
      @required this.rating,
      this.totalRating = 10,
      this.count = 5,
      this.size = 30,
      this.unselColor = Colors.grey,
      this.selColor = Colors.orange,
	  Widget selImg,
	  Widget unSelImg
	  }
	  )
      : selImg = selImg ?? Icon(
        Icons.star,
        color: selColor,
        size: size,
      ),unSelImg = unSelImg ?? Icon(
        Icons.star_border,
        color: unselColor,
        size: size,
      );


  @override
  _MyStarRatingState createState() => _MyStarRatingState();
}

class _MyStarRatingState extends State<MyStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: getStar()),
        Row(mainAxisSize: MainAxisSize.min, children: getSelStar())
      ],
    );
  }

  List<Widget> getStar() {
    return List.generate(widget.count, (index) {
      return widget.unSelImg;
    });
  }

  List<Widget> getSelStar() {
    List<Widget> stars = [];
    final star = widget.selImg;

    double single = widget.totalRating / widget.count;
    int fullStar = (widget.rating / single).floor();
    double leftWidth = ((widget.rating / single) - fullStar) * widget.size;

    for (var i = 0; i < fullStar; i++) {
      stars.add(star);
    }
    final little = ClipRect(
      clipper: MyClip(leftWidth),
      child: star,
    );

    stars.add(little);
    return stars;
  }
}

//抽象类无法实例，继承裁剪
class MyClip extends CustomClipper<Rect> {
  double width;
  MyClip(this.width);
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    print(this.width);

    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(MyClip oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
}
