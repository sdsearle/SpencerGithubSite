/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:sdsearle_github/Screens/Home/HomeWidget.dart';
import 'package:sdsearle_github/res/Strings.dart';
import 'package:injectable/injectable.dart';

import '../Screens/Example/ExampleWidget.dart';
import '../Screens/Second/SecondWidget.dart';
import '../injection.dart';
import '../main.dart';

@singleton
class Navi{

  static final Navi _navi = Navi._internal();

  factory Navi(){
    return _navi;
  }

  Navi._internal();

  BuildContext get _currentContext => _contextStack.last;
  final List<BuildContext> _contextStack = <BuildContext>[];

  get initial => routes[0];

  void setCurrentContext(BuildContext context){
    if(_contextStack.isEmpty || _currentContext != context) {
      Fimber.d("Navi Hash: $hashCode");
      _contextStack.add(context);
    }
  }

  void back(){
    Navigator.pop(_currentContext);
    _contextStack.removeLast();
    Fimber.d("Current state: ${_currentContext.widget}");
  }

  void goToSecondScreen() {
    Fimber.d("Navi Hash: $hashCode");
    Fimber.d("Current state: ${_currentContext.widget}");
    Navigator.pushNamed(_currentContext, '/second');
  }

  Map<String, Widget Function(BuildContext)> routes = {
    '/' : (context) => const HomeWidget(),

  };

}