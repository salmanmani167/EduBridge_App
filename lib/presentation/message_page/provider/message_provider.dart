import 'package:flutter/material.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/presentation/message_page/models/message_model.dart';
import '../models/chatlist_item_model.dart';

/// A provider class for the MessagePage.
///
/// This provider manages the state of the MessagePage, including the
/// current messageModelObj

// ignore_for_file: must_be_immutable
class MessageProvider extends ChangeNotifier {
  MessageModel messageModelObj = MessageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
