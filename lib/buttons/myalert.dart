import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Info',
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'You need to subscription, to access this course',
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
              ),
            ],
          ),
        );
      },
      child: const Text('Alert'),
    );
  }
}
