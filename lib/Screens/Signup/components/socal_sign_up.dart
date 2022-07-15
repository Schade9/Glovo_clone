import 'package:flutter/material.dart';

//import '../../../screens/Signup/components/or_divider.dart';
//import '../../../screens/Signup/components/social_icon.dart';
import '../components/social_icon.dart';
import '../components/or_divider.dart';

class SocalSignUp extends StatelessWidget {
  const SocalSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocalIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {
                // ignore: avoid_print
                print("Facebook button pressed");
              },
            ),
            SocalIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {
                // ignore: avoid_print
                print("Twitter button pressed");
              },
            ),
            SocalIcon(
              iconSrc: "assets/icons/google-plus.svg",
              press: () {
                // ignore: avoid_print
                print("Google button pressed");
              },
            ),
          ],
        ),
      ],
    );
  }
}