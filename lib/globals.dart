//globals.dart

import 'package:flutter/material.dart';

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
