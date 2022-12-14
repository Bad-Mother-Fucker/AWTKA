//globals.dart

import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

showSnackBar({
  required String contentText,
}) {
  snackbarKey.currentState?.clearSnackBars();

  SnackBar snackBar = SnackBar(
    content: Text(contentText),
  );

  snackbarKey.currentState?.showSnackBar(snackBar);
}

showTopSnackBarInfo({
  required String message,
  required BuildContext context,
}) {
  if (Overlay.of(context) == null) return;
  showTopSnackBar(
    Overlay.of(context)!,
    CustomSnackBar.info(
      message: message,
    ),
  );
}
