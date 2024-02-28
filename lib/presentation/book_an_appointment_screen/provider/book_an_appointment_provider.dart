import 'package:flutter/material.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/presentation/book_an_appointment_screen/models/book_an_appointment_model.dart';

/// A provider class for the BookAnAppointmentScreen.
///
/// This provider manages the state of the BookAnAppointmentScreen, including the
/// current bookAnAppointmentModelObj

// ignore_for_file: must_be_immutable
class BookAnAppointmentProvider extends ChangeNotifier {
  BookAnAppointmentModel bookAnAppointmentModelObj = BookAnAppointmentModel();

  @override
  void dispose() {
    super.dispose();
  }
}
