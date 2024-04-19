/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:sdsearle_github/BaseClasses/BaseInteractor.dart';
import 'package:sdsearle_github/Navigator/Navi.dart';
import 'package:sdsearle_github/Screens/Example/ExampleRepo.dart';
import 'package:sdsearle_github/injection.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExampleInteractor extends BaseInteractor{
  final ExampleRepo _exampleRepo = getIt<ExampleRepo>();

  int getCounter() {
    // Get the counter value from the repository.
    return _exampleRepo.getCounter();
  }

  incrementCounter() {
    // Increment the counter value in the repository.
    _exampleRepo.incrementCounter();
  }

  goToSecondScreen() {
    navi.goToSecondScreen();
  }
}