import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        SnackBar snackBar = SnackBar(
          content: const Text('OTP has been sent !'),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(
            label: 'Ok',
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar(
                reason: SnackBarClosedReason.action,
              );
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('SnackBar'),
    );
  }
}
