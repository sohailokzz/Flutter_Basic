import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Column(
            children: const [
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              )
            ],
          ),
        );
      },
      child: const Text('Bottom Sheet'),
    );
  }
}
