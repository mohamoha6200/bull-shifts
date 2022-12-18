import 'package:bot_toast/bot_toast.dart';
import 'package:bull_shifts/core/constants/utils_contants.dart';
import 'package:bull_shifts/injection.dart';
import 'package:bull_shifts/presentation/common/cubit/shifts_cubit.dart';
import 'package:bull_shifts/presentation/common/routes/routes.dart';
import 'package:bull_shifts/presentation/common/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShiftsCubit>()..readShiftsFile(),
      child: ScreenUtilInit(
        designSize: const Size(392, 781),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Bulldozer Shifts',
            themeMode: ThemeMode.light,
            theme: AppThemeData.lightThemeData,
            locale: const Locale(UtilsConstants.localeFr),
            onGenerateRoute: (RouteSettings settings) {
              final routes = Routes.getRoutes(settings);
              final WidgetBuilder? builder = routes[settings.name];
              return Routes.getRouteTransition(
                  builder!, settings, settings.name!);
            },
            builder: BotToastInit(),
            navigatorObservers: [BotToastNavigatorObserver()],
          );
        },
      ),
    );
  }
}
