import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:sdsearle_github/BaseClasses/BaseScaffold.dart';
import 'package:sdsearle_github/Screens/Home/HomeInteractor.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/3/2023.
 */

class HomeScaffold extends BaseScaffold {
  final ThemeData theme;
  final HomeInteractor interactor;

  HomeScaffold(
      {required super.updater,
      required super.context,
      required this.theme,
      required this.interactor});

  @override
  Widget? get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [1, 2].map((e) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                      child: Image.asset(
                    "assets/images/sedona$e.jpg",
                  ));
                });
              }).toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                height: MediaQuery.of(context).size.height,
              ),
            )
          ],
        ),
      );
}
