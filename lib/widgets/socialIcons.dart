import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcons({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey[300],
          ),
          shape: BoxShape.circle,
        ),
        child: Image(
          image: AssetImage(iconSrc),
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
