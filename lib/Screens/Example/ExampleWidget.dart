/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:sdsearle_github/BaseClasses/BaseWidget.dart';
import '../../BaseClasses/BaseState.dart';
import 'ExampleState.dart';

class ExampleWidget extends BaseWidget {
  const ExampleWidget({super.key, required this.title});

  final String title;

  @override
  BaseState<ExampleWidget> createState() => ExampleState();
}