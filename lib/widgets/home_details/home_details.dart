import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
        sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? TextAlign.left
          : TextAlign.center;
      
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ?
      16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'QUARANBEATS\nRADIO.',
              style: TextStyle(
                  fontWeight: FontWeight.w700, 
                  fontSize: 70, 
                  height: 1.0
                ),
                textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Quaranbeats Radio is an online video podcast spearheaded by Owen Precious, better known as OP Yeti. \nBeen sleeping on your couch since 2015!',
              style: TextStyle(
                fontSize: 21, 
                height: 1.7
              ),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}