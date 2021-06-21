import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hours/screens/home/componets/body.dart';

class Homescreen extends StatelessWidget {
  //const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("OUTDORSY"),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("hours/assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
