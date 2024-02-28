import 'package:flutter/material.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/presentation/ambulance_screen/models/ambulance_model.dart';

/// A provider class for the AmbulanceScreen.
///
/// This provider manages the state of the AmbulanceScreen, including the
/// current ambulanceModelObj

// ignore_for_file: must_be_immutable
class AmbulanceProvider extends ChangeNotifier {
  AmbulanceModel ambulanceModelObj = AmbulanceModel();

  @override
  void dispose() {
    super.dispose();
  }
}
