import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookIcon extends StatelessWidget {
  const FacebookIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SvgPicture.string(
        '''
        <svg width="50" height="49" viewBox="0 0 50 49" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M49.1715 24.2222C49.1715 10.8865 38.3608 0.0758324 25.0252 0.0758324C11.6895 0.0758324 0.878784 10.8865 0.878784 24.2222C0.878784 36.2743 9.70876 46.2638 21.2523 48.0752V31.202H15.1214V24.2222H21.2523V18.9025C21.2523 12.8508 24.8572 9.508 30.3727 9.508C33.0145 9.508 35.7778 9.97961 35.7778 9.97961V15.9219H32.733C29.7335 15.9219 28.798 17.7832 28.798 19.6927V24.2222H35.4949L34.4243 31.202H28.798V48.0752C40.3415 46.2638 49.1715 36.2743 49.1715 24.2222Z" fill="white"/>
        </svg>
         ''',
        width: 24,
        height: 24,
      );
}
