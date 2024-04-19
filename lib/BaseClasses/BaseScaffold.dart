/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/material.dart';
import 'package:sdsearle_github/BaseClasses/BaseInteractor.dart';

class BaseScaffold extends Scaffold {

  BaseScaffold({super.key, required this.updater, required this.context, required this.interactor});

  final Function updater;
  final BuildContext context;
  final BaseInteractor interactor;
  var title = Text("Spencer D Searle");
  var leading;

  @override
  PreferredSizeWidget? get appBar =>
      AppBar(
        title: title,
        leading: leading,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(preferredSize: Size(10,32),
        child: Row(
          children: [
            ElevatedButton(onPressed: () => {interactor.navi.goToAboutMeScreen()}, child: Text("About Me")),
            ElevatedButton(onPressed: () => {interactor.navi.goToSecondScreen()}, child: Text("Skills")),
            ElevatedButton(onPressed: () => {interactor.navi.goToSecondScreen()}, child: Text("Resume")),
          ],
        ),)
      );
}