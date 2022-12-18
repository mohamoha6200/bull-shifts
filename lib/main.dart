import 'dart:async';

import 'package:bull_shifts/injection.dart';
import 'package:bull_shifts/presentation/common/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// App will run portrait only
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// environment for injectable package initialization
  await configureInjection(Environment.prod);

  // For dateTime formatting/localisation
  unawaited(initializeDateFormatting());

  runApp(const App());
}
