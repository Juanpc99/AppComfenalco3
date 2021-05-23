import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  
  const SocialMedia({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(5),
        height: 40,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey[850].withOpacity(.15),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

Widget redes() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SocialMedia(
        icon: 'assets/icons/facebook.svg',
        press: () => {launch('https://www.facebook.com/ComfenalcoValle')},
      ),
      SocialMedia(
        icon: 'assets/icons/instagram.svg',
        press: () => {launch('https://www.instagram.com/ComfenalcoValle/')},
      ),
      SocialMedia(
        icon: 'assets/icons/twit.svg',
        press: () => {launch('https://twitter.com/ComfenalcoValle')},
      ),
      SocialMedia(
        icon: 'assets/icons/youtube.svg',
        press: () => {
          launch('https://www.youtube.com/channel/UCD7A6Bjx1QbFFacN3o5nIbA')
        },
      ),
    ],
  );
}

