import 'package:flutter/material.dart';
import 'package:edubridge/core/app_export.dart';
import 'package:edubridge/presentation/chat_screen/models/chat_model.dart';

/// A provider class for the ChatScreen.
///
/// This provider manages the state of the ChatScreen, including the
/// current chatModelObj

// ignore_for_file: must_be_immutable
class ChatProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatModel chatModelObj = ChatModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
