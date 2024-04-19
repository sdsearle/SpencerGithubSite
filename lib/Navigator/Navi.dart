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
class Navi {
  static final Navi _navi = Navi._internal();

  factory Navi() {
    return _navi;
  }

  Navi._internal();

  final List<BuildContext> _contextStack = <BuildContext>[];

  BuildContext get _currentContext => _contextStack.last;

  get initial => routes[0];

  void setCurrentContext(BuildContext context) {
    if (_contextStack.isEmpty || _currentContext != context) {
      Fimber.d("${_contextStack.length}");
      _contextStack.add(context);
      Fimber.d("${_contextStack.length}");
    }
  }

  void popCurrent(BuildContext context) {
    Fimber.d("popCurrent");
    Fimber.d((_contextStack.isNotEmpty && _currentContext == context).toString());
    if (_contextStack.isNotEmpty && _currentContext == context) {
      Fimber.d("${_contextStack.length}");
      _contextStack.remove(context);
      Fimber.d("${_contextStack.length}");
    }
  }

  void back() {
    Navigator.pop(_currentContext);
  }

  void goToSecondScreen() {
    Fimber.d("Current state: ${_currentContext.widget}");
    Fimber.d("Current type: ${_currentContext.widget.runtimeType}");
    if(_currentContext.widget is SecondWidget){
    }else{
      var e = _contextStack.whereType<SecondWidget>();
      if(e.isNotEmpty){
        Fimber.d("Widget exists in stack.");
        Navigator.of(_currentContext).popUntil((route) => route.settings.name == _SECOND);
      }else{
        Fimber.d("Negative on existance");
        Navigator.of(_currentContext).pushNamed(_SECOND);
      }
    }
  }

  void goToAboutMeScreen() {
    Navigator.of(_currentContext).popUntil((route) => route.isFirst);
  }

  static const _HOME = '/';
  static const _SECOND = 'second';

  Map<String, Widget Function(BuildContext)> routes = {
    _HOME: (context) => const HomeWidget(),
    _SECOND: (context) => const SecondWidget(),
  };

}
