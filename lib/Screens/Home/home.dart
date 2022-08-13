import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glovo/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular.dart';
import 'components/search_form.dart';
// import '../../../components/background.dart';
// import '../Welcome/components/welcome_image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      //Top bar with notification bell and location
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding /2),
            Text(
              "15/2 NEW Texas",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),

      // Explore row.....
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore", style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500, color: Colors.black)),
            const Text(
              "best Outfits for you", 
              style: TextStyle(fontSize: 18),
            ),

            // search area....
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),

            // row for product cards
            const Categories(),
            const SizedBox(height: defaultPadding),

            // new arrivals and popular
            const NewArrival(),
            const SizedBox(height: defaultPadding),
            const Popular(),

            
          ],
        ),
      )


    );
  }
}










