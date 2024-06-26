import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

///This class is used to initialize the application process
final class ApplicationInitialize {
  // project basic required initialize
  Future<void> make() async {
    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stack) {
        Logger().e(error);
      },
    );
  }

  //This method is used to initialize the application process
  static Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };

    //Dependency initialize

    //envied
  }
}
