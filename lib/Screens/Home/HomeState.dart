import 'package:flutter/material.dart';
import 'package:sdsearle_github/BaseClasses/BaseState.dart';
import 'package:sdsearle_github/Screens/Home/HomeScaffold.dart';
import 'package:sdsearle_github/Screens/Home/HomeWidget.dart';

import '../../BaseClasses/BaseInteractor.dart';
import '../../injection.dart';
import 'HomeInteractor.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/3/2023.
 */

class HomeState extends BaseState<HomeWidget> {

  @override
  covariant HomeInteractor interactor = getIt<HomeInteractor>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return HomeScaffold(updater: updater,
        context: context,
        theme: Theme.of(context),
        interactor: interactor);
  }
}