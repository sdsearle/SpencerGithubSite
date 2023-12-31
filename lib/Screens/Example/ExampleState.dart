/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdsearle_github/Screens/Example/ExampleInteractor.dart';
import 'package:sdsearle_github/injection.dart';

import '../../BaseClasses/BaseInteractor.dart';
import 'ExampleScaffold.dart';
import 'ExampleWidget.dart';
import '../../BaseClasses/BaseState.dart';

class ExampleState extends BaseState<ExampleWidget> {
  @override
  covariant ExampleInteractor interactor = getIt<ExampleInteractor>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ExampleScaffold(
      theme: Theme.of(context),
      context: context,
      updater: updater,
      interactor: interactor,
    );
  }
}
