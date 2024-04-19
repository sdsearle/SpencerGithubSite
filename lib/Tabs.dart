import 'package:flutter/material.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/4/2023.
 */

class Tabs extends DefaultTabController{
  Tabs({required super.length, required super.child});

  @override
  // TODO: implement child
  Widget get child => Scaffold(
    appBar: AppBar(
      bottom: const TabBar(
        tabs: [
          Tab(text: "Home"),
          Tab(text: "Code"),
          Tab(text: "Other"),
        ],
      ),
    ),
  );

}