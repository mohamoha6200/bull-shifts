import 'package:bull_shifts/core/constants/assets_constants.dart';
import 'package:bull_shifts/presentation/common/cubit/shifts_cubit.dart';
import 'package:bull_shifts/presentation/common/routes/route_constants.dart';
import 'package:bull_shifts/presentation/common/utils/botToast.dart';
import 'package:bull_shifts/presentation/features/splash/widgets/animated_splash_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool splashReady = false;
  bool shiftsLoaded = false;

  @override
  void initState() {
    super.initState();
    _setSplashReady();
  }

  @override
  void didChangeDependencies() {
    // Faster asset loading
    precacheImage(
      Image.asset(AssetsConstants.companyLogo).image,
      context,
    );
    super.didChangeDependencies();
  }

  _navigateHome() {
    if (splashReady && shiftsLoaded) {
      Navigator.pushReplacementNamed(context, RouteList.tabbedHomeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShiftsCubit, ShiftsState>(
      listener: (context, state) {
        // folding the Option
        state.result.fold(() => null, (a) {
          // folding the Either result
          a.fold((l) {
            // Loading shifts failed
            ToastUtil.showText(text: l, isSuccess: false);
          }, (r) {
            // Shifts successfully loaded
            setState(() => shiftsLoaded = true);
            _navigateHome();
          });
        });
      },
      child: const Scaffold(body: AnimatedLoader()),
    );
  }

  // Delay splash for a certain duration to show the animation
  Future<void> _setSplashReady() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() => splashReady = true);
    _navigateHome();
  }
}
