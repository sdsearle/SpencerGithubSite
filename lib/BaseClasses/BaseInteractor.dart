import '../Navigator/Navi.dart';
import '../injection.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 8/25/2023.
 */

abstract class BaseInteractor{

  final Navi navi = getIt<Navi>();

}