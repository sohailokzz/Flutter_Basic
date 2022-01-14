import 'package:flutter/material.dart';

class MyConfirmationDialog extends StatelessWidget {
  const MyConfirmationDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        bool result = await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Are You Sure ?',
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'Do you want this content, this is ir-reversible and will deleted !',
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
              ),
            ],
          ),
        );
        print(result);
      },
      child: const Text('Confirmation Dialog'),
    );
  }
}
