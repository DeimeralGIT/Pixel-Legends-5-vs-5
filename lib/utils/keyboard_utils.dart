import 'dart:async';

import 'package:flutter/material.dart';

class KeyboardUtils {
  KeyboardUtils(this.context);
  BuildContext context;

  final TextEditingController textController = TextEditingController();

  final FocusNode focusNode = FocusNode();

  VoidCallback? onClose;

  Stream<String> get onTextChanged => textController.textChanges;

  void openKeyboard() {
    FocusScope.of(context).requestFocus(focusNode);
  }

  void closeKeyboard() {
    FocusScope.of(context).unfocus();
    if (onClose != null) onClose!();
  }

  void dispose() {
    textController.dispose();
    focusNode.dispose();
  }
}

extension _TextEditingControllerExtension on TextEditingController {
  Stream<String> get textChanges {
    final controller = this;
    final streamController = StreamController<String>();

    controller.addListener(() {
      streamController.add(controller.text);
    });

    streamController.onCancel = () {
      streamController.close();
    };

    return streamController.stream;
  }
}
