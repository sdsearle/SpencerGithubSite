/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:sdsearle_github/BaseClasses/BaseWidget.dart';
import '../../BaseClasses/BaseState.dart';
import 'SecondState.dart';

class SecondWidget extends BaseWidget {
  const SecondWidget({super.key});

  @override
  BaseState<SecondWidget> createState() => SecondState();
}