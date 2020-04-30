import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: Color(0xff473F97),
      title: IconButton(
        onPressed: () => {},
        icon: SvgPicture.asset('assets/images/menu.svg'),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset('assets/images/bell.svg'),
          ),
        )
      ],
    );
  }