import 'package:flutter/material.dart';
import 'package:one_page/widgets/NavigationBar/navigation_bar.dart';
import 'package:one_page/widgets/call_to_action/call_to_action.dart';
import 'package:one_page/widgets/centered_view/centered_view.dart';
import 'package:one_page/widgets/home_details/home_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(children: [
                HomeDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction("WATCH LIVE"),
                  )
                )
              ]),
            )
          ],
        )
      )
    );
  }
}