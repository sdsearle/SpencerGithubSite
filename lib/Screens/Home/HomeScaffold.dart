import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:sdsearle_github/BaseClasses/BaseScaffold.dart';
import 'package:sdsearle_github/Screens/Home/HomeInteractor.dart';
import 'package:sdsearle_github/res/Strings.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/3/2023.
 */

class HomeScaffold extends BaseScaffold {
  final ThemeData theme;

  @override
  final HomeInteractor interactor;

  HomeScaffold(
      {required super.updater,
      required super.context,
      required this.theme,
      required this.interactor}) : super(interactor: interactor);

  @override
  Widget? get body => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CarouselSlider(
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
                  autoPlay: true,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child:  const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(Strings.Location, textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child:  const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(Strings.Email, textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child:  const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(Strings.About, textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

}
