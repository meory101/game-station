import 'package:flutter/material.dart';
import 'package:gamestation/theme/fonts.dart';

class Header extends StatefulWidget {
  ImageProvider image;
  String name;
  Header({required this.image, required this.name});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/flaticon.png'),
                fit: BoxFit.cover),
          ),
        ),
        Row(
          children: [
            Text('${widget.name}', style: sub_W_font_sh),
            SizedBox(
              width: 6,
            ),
            CircleAvatar(
              backgroundImage: widget.image,
            ),
          ],
        ),
      ],
    );
  }
}
