/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdsearle_github/Screens/Second/SecondInteractor.dart';
import 'package:sdsearle_github/injection.dart';

import 'SecondScaffold.dart';
import 'SecondWidget.dart';
import '../../BaseClasses/BaseState.dart';

class SecondState extends BaseState<SecondWidget> {
  @override
  covariant SecondInteractor interactor = getIt<SecondInteractor>();

  @override
  Widget build(BuildContext context) {
    return SecondScaffold(
      theme: Theme.of(context),
      context: context,
      updater: updater,
      interactor: interactor,
    );
  }
}
