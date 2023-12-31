// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'Custom%20Widgets/ExampleCustomWidget/ExampleCustomInteractor.dart'
    as _i3;
import 'Navigator/Navi.dart' as _i7;
import 'Screens/Example/ExampleInteractor.dart' as _i4;
import 'Screens/Example/ExampleRepo.dart' as _i5;
import 'Screens/Home/HomeInteractor.dart' as _i6;
import 'Screens/Second/SecondInteractor.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ExampleCustomInteractor>(
        () => _i3.ExampleCustomInteractor());
    gh.factory<_i4.ExampleInteractor>(() => _i4.ExampleInteractor());
    gh.factory<_i5.ExampleRepo>(() => _i5.ExampleRepo());
    gh.factory<_i6.HomeInteractor>(() => _i6.HomeInteractor());
    gh.singleton<_i7.Navi>(_i7.Navi());
    gh.factory<_i8.SecondInteractor>(() => _i8.SecondInteractor());
    return this;
  }
}
