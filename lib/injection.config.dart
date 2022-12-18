// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'infrastructure/datasources/local_datasources/shift_local_data_source.dart'
    as _i3;
import 'infrastructure/repositories/shift_repository.dart' as _i4;
import 'infrastructure/usecases/shift/read_shifts.dart' as _i5;
import 'presentation/common/cubit/shifts_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ShiftLocalDataSource>(_i3.ShiftLocalDataSourceImpl());
  gh.singleton<_i4.ShiftRepository>(
      _i4.ShiftRepositoryImpl(get<_i3.ShiftLocalDataSource>()));
  gh.singleton<_i5.GetLocalShifts>(
      _i5.GetLocalShifts(get<_i4.ShiftRepository>()));
  gh.factory<_i6.ShiftsCubit>(() => _i6.ShiftsCubit(get<_i5.GetLocalShifts>()));
  return get;
}
