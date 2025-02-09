import 'package:flutter/material.dart';

class AppDialogs {
  static showLoadingDialog(BuildContext context, {bool barrierDismissible = true, Widget? content}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          spacing: 12,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()],
            ),
            content ?? SizedBox.shrink(),
          ],
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }
}
