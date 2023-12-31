/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:sdsearle_github/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

//generate with 'flutter pub run build_runner watch --delete-conflicting-outputs'

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();