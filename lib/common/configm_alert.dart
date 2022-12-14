import 'package:flutter/material.dart';

Future<bool> showAlertDialog(
  BuildContext context, {
  String title = 'Alert',
  String content = 'This action can\'t undo. Do you want to continue?',
  String cancelText = 'Cancel',
  String continueText = 'Continue',
}) async {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text(
      cancelText,
      style: const TextStyle(color: Colors.white),
    ),
    onPressed: () {
      Navigator.of(context).pop(false);
    },
  );
  Widget continueButton = TextButton(
    child: Text(
      continueText,
      style: const TextStyle(color: Colors.red),
    ),
    onPressed: () {
      Navigator.of(context).pop(true);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0))),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    content: Text(
      content,
      style: const TextStyle(color: Colors.white),
    ),
    backgroundColor: const Color(0xff1c1c23),
    actions: [
      continueButton,
      cancelButton,
    ],
  );

  // show the dialog
  return (await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      )) ??
      false;
}
