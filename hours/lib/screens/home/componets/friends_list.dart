import 'package:flutter/material.dart';
import 'package:hours/constrants.dart';

class Friendslist extends StatelessWidget {
  const Friendslist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendFriendCard(
            image: "assets/images/image_1.png",
            title: "Nathan",
            country: "United States",
            press: () {},
          ),
          RecomendFriendCard(
            image: "assets/images/image_2.png",
            title: "Phantaysia",
            country: "United States",
            press: () {},
          ),
          RecomendFriendCard(
            image: "assets/images/image_3.png",
            title: "Ashlynn",
            country: "United States",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendFriendCard extends StatelessWidget {
  const RecomendFriendCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
