import 'package:sdsearle_github/BaseClasses/BaseState.dart';
import 'package:sdsearle_github/BaseClasses/BaseWidget.dart';

import 'HomeState.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/3/2023.
 */

class HomeWidget extends BaseWidget {
  const HomeWidget({super.key});

  @override
  BaseState<HomeWidget> createState() => HomeState();
}