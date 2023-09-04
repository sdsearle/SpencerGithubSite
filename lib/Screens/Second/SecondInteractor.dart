/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:sdsearle_github/Navigator/Navi.dart';
import 'package:sdsearle_github/Screens/Example/ExampleRepo.dart';
import 'package:sdsearle_github/injection.dart';
import 'package:injectable/injectable.dart';

import '../../BaseClasses/BaseInteractor.dart';

@injectable
class SecondInteractor extends BaseInteractor{
  final navi = getIt<Navi>();
  final repo = getIt<ExampleRepo>();

  void addViews(){
    repo.addView();
  }

  void back(){
    navi.back();
  }

  getViews() {
    return repo.getViews();
  }
}