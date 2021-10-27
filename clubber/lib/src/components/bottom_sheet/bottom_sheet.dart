import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/UIBottomSheet/UIBottomSheet.dart';

class CLBottomSheet {
  static Future show(
    BuildContext context, {
    required Widget content,
    Widget? trailing,
    bool enableDrag = true,
    bool floatted = true,
  }) async {
    return await UIBottomSheet.show(
      context: context,
      content: content,
      floatted: floatted,
      trailing: trailing,
      enableDrag: enableDrag,
    );
  }
}
