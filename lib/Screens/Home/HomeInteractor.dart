import 'package:injectable/injectable.dart';
import 'package:sdsearle_github/BaseClasses/BaseInteractor.dart';
import 'package:sdsearle_github/Navigator/Navi.dart';
import 'package:sdsearle_github/injection.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 9/3/2023.
 */

@injectable
class HomeInteractor extends BaseInteractor{
  final Navi _navi = getIt<Navi>();

}