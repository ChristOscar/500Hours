import 'package:flutter/material.dart';
import 'package:hours/constrants.dart';
import 'package:hours/screens/home/componets/friends_list.dart';
import 'package:hours/screens/home/componets/header.dart';
import 'package:hours/screens/home/componets/title_w_morebutton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          TitleWithMoreBtn(title: "Friends", press: () {}),
          Friendslist(),
        ],
      ),
    );
  }
}
